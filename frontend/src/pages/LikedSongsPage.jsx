import { useState, useEffect } from 'react';
import SongCard from '../components/SongCard';
import Player from '../components/Player';
import { getLikedSongs, likeSong, dislikeSong } from '../services/api';

function LikedSongsPage() {
  const [songs, setSongs] = useState([]);
  const [selectedSong, setSelectedSong] = useState(null);
  const [loading, setLoading] = useState(true);

  const loadLiked = async () => {
    try {
      const res = await getLikedSongs();
      setSongs(res.data);
    } catch (e) {
      console.error('Failed to load liked songs', e);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => { loadLiked(); }, []);

  const handlePlay = (song) => setSelectedSong(song);

  const handleLike = async (songId) => {
    try {
      await likeSong(songId);
      loadLiked();
    } catch (e) {
      console.error('Like failed', e);
    }
  };

  const handleDislike = async (songId) => {
    try {
      await dislikeSong(songId);
      loadLiked();
    } catch (e) {
      console.error('Dislike failed', e);
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
              onPlay={handlePlay}
              isActive={selectedSong?.song_id === song.song_id}
            />
          ))}
        </div>
      )}

      <Player
        songs={songs}
        selectedSong={selectedSong}
        onLike={handleLike}
        onDislike={handleDislike}
      />
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
