import { useState, useEffect, useCallback } from 'react';
import SearchBar from '../components/SearchBar';
import SongCard from '../components/SongCard';
import MoodSelector from '../components/MoodSelector';
import { getAllSongs, searchSongs, likeSong, dislikeSong } from '../services/api';
import { usePlayer } from '../context/PlayerContext';

function HomePage() {
  const [songs, setSongs] = useState([]);
  const [activeMood, setActiveMood] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Expose song list to Player for skip navigation
  const { setSongs: setPlayerSongs, updateCurrentSong } = usePlayer();

  const applyAndStore = useCallback((newSongs) => {
    setSongs(newSongs);
    setPlayerSongs(newSongs); // keep Player skip list in sync
  }, [setPlayerSongs]);

  const loadAllSongs = useCallback(async () => {
    setLoading(true);
    try {
      const data = await getAllSongs();
      applyAndStore(data || []);
      setError(null);
    } catch (err) {
      console.error('Failed to load songs', err);
      setError(err.message || 'Failed to load songs. Please try again.');
    } finally {
      setLoading(false);
    }
  }, [applyAndStore]);

  // FIX 2: only load songs on mount — never auto-play
  useEffect(() => { loadAllSongs(); }, [loadAllSongs]);

  const handleSearch = async (q) => {
    if (!q && !activeMood) { loadAllSongs(); return; }
    setLoading(true);
    try {
      const data = await searchSongs(q, '', '', activeMood || '');
      applyAndStore(data || []);
      setError(null);
    } catch (err) {
      console.error('Search failed', err);
      setError(err.message || 'Search failed. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  const handleClear = () => {
    setActiveMood(null);
    loadAllSongs();
  };

  const handleMoodSelect = async (mood) => {
    setActiveMood(mood);
    setLoading(true);
    try {
      const data = await searchSongs('', '', '', mood || '');
      applyAndStore(data || []);
      setError(null);
    } catch (err) {
      console.error('Mood filter failed', err);
      setError(err.message || 'Failed to filter by mood. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  // FIX 5: toggle like without refetching the full song list.
  // Re-throws on error so SongCard can display a toast and the icon reverts
  // (state is only updated on success, so no explicit revert needed).
  const handleToggleLike = async (song) => {
    try {
      if (song.is_liked) {
        await dislikeSong(song.song_id);
      } else {
        await likeSong(song.song_id);
      }
      const updated = { ...song, is_liked: !song.is_liked };
      setSongs((prev) => prev.map((s) => (s.song_id === song.song_id ? updated : s)));
      setPlayerSongs((prev) => prev.map((s) => (s.song_id === song.song_id ? updated : s)));
      updateCurrentSong(updated);
    } catch (err) {
      console.error('Like toggle failed', err);
      throw err; // re-throw so SongCard shows its error toast
    }
  };

  return (
    <div className="page-container" style={styles.page}>
      {/* Search */}
      <section style={styles.section}>
        <SearchBar onSearch={handleSearch} onClear={handleClear} />
      </section>

      {/* Mood filter */}
      <section style={styles.section}>
        <h2 style={styles.sectionTitle}>Filter by Mood</h2>
        <MoodSelector activeMood={activeMood} onMoodSelect={handleMoodSelect} />
      </section>

      {/* Songs list */}
      <section style={styles.section}>
        <h2 style={styles.sectionTitle}>
          {activeMood ? `${activeMood} songs` : 'All Songs'}
          {' '}
          <span style={styles.count}>({songs.length})</span>
        </h2>

        {error && (
          <div style={styles.error}>
            {error}
            <button onClick={loadAllSongs} style={styles.retryBtn}>Retry</button>
          </div>
        )}

        {loading ? (
          <div style={styles.loading}>
            <span style={styles.spinner} />
            Loading…
          </div>
        ) : songs.length === 0 && !error ? (
          <div style={styles.empty}>No songs found.</div>
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
      </section>
    </div>
  );
}

const styles = {
  page: {
    maxWidth: 860,
    margin: '0 auto',
    /* padding handled by .page-container class in mobile.css */
  },
  section: { marginBottom: 32 },
  sectionTitle: {
    fontSize: 16,
    fontWeight: 600,
    color: '#ccc',
    marginBottom: 14,
  },
  count: { fontSize: 13, color: '#666', fontWeight: 400 },
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
  empty: { color: '#555', padding: '20px 0' },
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

export default HomePage;
