import { useState, useEffect, useCallback } from 'react';
import SongCard from '../components/SongCard';
import { getLikedSongs, likeSong, dislikeSong } from '../services/api';
import { usePlayer } from '../context/PlayerContext';

function LikedSongsPage() {
  const [songs, setSongs] = useState([]);
  const [loading, setLoading] = useState(true);

  // Expose liked song list to Player for skip navigation
  const { setSongs: setPlayerSongs, updateCurrentSong } = usePlayer();

  const applyAndStore = useCallback((newSongs) => {
    setSongs(newSongs);
    setPlayerSongs(newSongs);
  }, [setPlayerSongs]);

  // FIX 2: only load songs on mount — never auto-play
  useEffect(() => {
    const load = async () => {
      try {
        const res = await getLikedSongs();
        applyAndStore(res.data);
      } catch (e) {
        console.error('Failed to load liked songs', e);
      } finally {
        setLoading(false);
      }
    };
    load();
  }, [applyAndStore]);

  // FIX 5: toggle like without refetching the full list
  const handleToggleLike = async (song) => {
    try {
      if (song.is_liked) {
        await dislikeSong(song.song_id);
        // Remove from liked list (dislike on liked-songs page = remove the entry)
        applyAndStore(songs.filter((s) => s.song_id !== song.song_id));
        updateCurrentSong({ song_id: song.song_id, is_liked: false });
      } else {
        await likeSong(song.song_id);
        const updatedSong = { ...song, is_liked: true };
        applyAndStore(songs.map((s) => (s.song_id === song.song_id ? updatedSong : s)));
        updateCurrentSong(updatedSong);
      }
    } catch (e) {
      console.error('Like toggle failed', e);
    }
  };

  return (
    <div style={styles.page}>
      <h1 style={styles.heading}>♥ Liked Songs</h1>

      {loading ? (
        <div style={styles.msg}>Loading…</div>
      ) : songs.length === 0 ? (
        <div style={styles.msg}>
          No liked songs yet. Like a song from the{' '}
          <a href="/" style={styles.link}>homepage</a>.
        </div>
      ) : (
        <div style={{ ...styles.list, paddingBottom: 100 }}>
          {songs.map((song) => (
            <SongCard
              key={song.song_id}
              song={song}
              onToggleLike={handleToggleLike}
            />
          ))}
        </div>
      )}
    </div>
  );
}

const styles = {
  page: {
    maxWidth: 860,
    margin: '0 auto',
    padding: '24px 20px',
  },
  heading: {
    fontSize: 22,
    fontWeight: 700,
    color: '#e94560',
    marginBottom: 24,
  },
  list: { display: 'flex', flexDirection: 'column', gap: 8 },
  msg: { color: '#666', padding: '20px 0', fontSize: 15 },
  link: { color: '#e94560' },
};

export default LikedSongsPage;
