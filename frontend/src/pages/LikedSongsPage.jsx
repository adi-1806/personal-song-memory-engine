import { useState, useEffect, useCallback } from 'react';
import SongCard from '../components/SongCard';
import { getLikedSongs, likeSong, dislikeSong } from '../services/api';
import { usePlayer } from '../context/PlayerContext';

function LikedSongsPage() {
  const [songs, setSongs] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Expose liked song list to Player for skip navigation
  const { setSongs: setPlayerSongs, updateCurrentSong } = usePlayer();

  const applyAndStore = useCallback((newSongs) => {
    setSongs(newSongs);
    setPlayerSongs(newSongs);
  }, [setPlayerSongs]);

  const load = useCallback(async () => {
    setLoading(true);
    try {
      const data = await getLikedSongs();
      applyAndStore(data || []);
      setError(null);
    } catch (err) {
      console.error('Failed to load liked songs', err);
      setError(err.message || 'Failed to load liked songs. Please try again.');
    } finally {
      setLoading(false);
    }
  }, [applyAndStore]);

  // FIX 2: only load songs on mount — never auto-play
  useEffect(() => { load(); }, [load]);

  // FIX 5: toggle like without refetching the full list.
  // Re-throws on error so SongCard can display a toast.
  const handleToggleLike = async (song) => {
    try {
      if (song.is_liked) {
        await dislikeSong(song.song_id);
        // Remove from liked list on the liked-songs page
        applyAndStore(songs.filter((s) => s.song_id !== song.song_id));
        updateCurrentSong({ song_id: song.song_id, is_liked: false });
      } else {
        await likeSong(song.song_id);
        const updatedSong = { ...song, is_liked: true };
        applyAndStore(songs.map((s) => (s.song_id === song.song_id ? updatedSong : s)));
        updateCurrentSong(updatedSong);
      }
    } catch (err) {
      console.error('Like toggle failed', err);
      throw err; // re-throw so SongCard shows its error toast
    }
  };

  return (
    <div className="page-container" style={styles.page}>
      <h1 style={styles.heading}>♥ Liked Songs</h1>

      {error && (
        <div style={styles.error}>
          {error}
          <button onClick={load} style={styles.retryBtn}>Retry</button>
        </div>
      )}

      {loading ? (
        <div style={styles.loading}>
          <span style={styles.spinner} />
          Loading…
        </div>
      ) : songs.length === 0 && !error ? (
        <div style={styles.msg}>
          No liked songs yet. Like a song from the{' '}
          <a href="/" style={styles.link}>homepage</a>.
        </div>
      ) : (
        <div style={styles.list}>
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
    /* padding handled by .page-container class in mobile.css */
  },
  heading: {
    fontSize: 22,
    fontWeight: 700,
    color: '#e94560',
    marginBottom: 24,
  },
  list: { display: 'flex', flexDirection: 'column', gap: 8 },
  loading: { color: '#666', padding: '20px 0', display: 'flex', alignItems: 'center', gap: 8 },
  spinner: {
    display: 'inline-block',
    width: 14,
    height: 14,
    border: '2px solid #444',
    borderTopColor: '#e94560',
    borderRadius: '50%',
    animation: 'spin 0.8s linear infinite',
  },
  msg: { color: '#666', padding: '20px 0', fontSize: 15 },
  link: { color: '#e94560' },
  error: {
    color: '#e94560',
    background: '#1a0a0f',
    padding: '12px 16px',
    borderRadius: 8,
    marginBottom: 16,
    fontSize: 14,
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'space-between',
    gap: 12,
  },
  retryBtn: {
    background: '#e94560',
    color: '#fff',
    border: 'none',
    borderRadius: 6,
    padding: '6px 14px',
    fontSize: 13,
    cursor: 'pointer',
    flexShrink: 0,
  },
};

export default LikedSongsPage;
