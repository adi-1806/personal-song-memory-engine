import { useState, useEffect } from 'react';
import SearchBar from '../components/SearchBar';
import SongCard from '../components/SongCard';
import MoodSelector from '../components/MoodSelector';
import Player from '../components/Player';
import { getAllSongs, searchSongs, likeSong, dislikeSong } from '../services/api';

function HomePage() {
  const [songs, setSongs] = useState([]);
  const [selectedSong, setSelectedSong] = useState(null);
  const [activeMood, setActiveMood] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  const loadAllSongs = async () => {
    try {
      const res = await getAllSongs();
      setSongs(res.data);
      setError(null);
    } catch (e) {
      console.error('Failed to load songs', e);
      setError('Could not connect to backend. Is it running on port 8000?');
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => { loadAllSongs(); }, []);

  const handleSearch = async (q) => {
    if (!q && !activeMood) { loadAllSongs(); return; }
    setLoading(true);
    try {
      const res = await searchSongs(q, '', '', activeMood || '');
      setSongs(res.data);
      setError(null);
    } catch (e) {
      console.error('Search failed', e);
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
      const res = await searchSongs('', '', '', mood || '');
      setSongs(res.data);
    } catch (e) {
      console.error('Mood filter failed', e);
    } finally {
      setLoading(false);
    }
  };

  const handlePlay = (song) => {
    setSelectedSong(song);
  };

  const handleLike = async (songId) => {
    try {
      await likeSong(songId);
      // Refresh so is_liked updates on cards
      const res = await getAllSongs();
      setSongs(res.data);
    } catch (e) {
      console.error('Like failed', e);
    }
  };

  const handleDislike = async (songId) => {
    try {
      await dislikeSong(songId);
      const res = await getAllSongs();
      setSongs(res.data);
    } catch (e) {
      console.error('Dislike failed', e);
    }
  };

  return (
    <div style={styles.page}>
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
      <section style={{ ...styles.section, paddingBottom: 100 }}>
        <h2 style={styles.sectionTitle}>
          {activeMood ? `${activeMood} songs` : 'All Songs'}
          {' '}
          <span style={styles.count}>({songs.length})</span>
        </h2>

        {error && <div style={styles.error}>{error}</div>}

        {loading ? (
          <div style={styles.loading}>Loading…</div>
        ) : songs.length === 0 ? (
          <div style={styles.empty}>No songs found.</div>
        ) : (
          <div style={styles.list}>
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
      </section>

      {/* Persistent player at bottom */}
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
  section: { marginBottom: 32 },
  sectionTitle: {
    fontSize: 16,
    fontWeight: 600,
    color: '#ccc',
    marginBottom: 14,
  },
  count: { fontSize: 13, color: '#666', fontWeight: 400 },
  list: { display: 'flex', flexDirection: 'column', gap: 8 },
  loading: { color: '#666', padding: '20px 0' },
  empty: { color: '#555', padding: '20px 0' },
  error: {
    color: '#e94560',
    background: '#1a0a0f',
    padding: '12px 16px',
    borderRadius: 8,
    marginBottom: 16,
    fontSize: 14,
  },
};

export default HomePage;
