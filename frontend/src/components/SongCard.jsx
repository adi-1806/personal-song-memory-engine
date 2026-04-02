function SongCard({ song, onPlay, isActive }) {
  const formatDuration = (secs) => {
    const m = Math.floor(secs / 60);
    const s = secs % 60;
    return `${m}:${s.toString().padStart(2, '0')}`;
  };

  return (
    <div style={{ ...styles.card, ...(isActive ? styles.activeCard : {}) }}>
      <div style={styles.left}>
        <button
          onClick={() => onPlay(song)}
          style={{ ...styles.playBtn, background: isActive ? '#e94560' : '#2a3a5a' }}
          title="Play"
        >
          {isActive ? '▶' : '▷'}
        </button>
      </div>

      <div style={styles.info} onClick={() => onPlay(song)}>
        <div style={styles.title}>{song.title}</div>
        <div style={styles.meta}>
          <span>{song.singer_name}</span>
          <span style={styles.dot}>·</span>
          <span>{song.language_name}</span>
          <span style={styles.dot}>·</span>
          <span>{song.genre_name}</span>
          {song.movie_name && (
            <>
              <span style={styles.dot}>·</span>
              <span style={styles.movie}>{song.movie_name}</span>
            </>
          )}
        </div>
        {song.moods && song.moods.length > 0 && (
          <div style={styles.moodRow}>
            {song.moods.map((m) => (
              <span key={m} style={styles.moodTag}>{m}</span>
            ))}
          </div>
        )}
      </div>

      <div style={styles.right}>
        {song.is_liked && <span style={styles.likedBadge}>♥</span>}
        <span style={styles.duration}>{formatDuration(song.duration_seconds)}</span>
      </div>
    </div>
  );
}

const styles = {
  card: {
    display: 'flex',
    alignItems: 'center',
    gap: 14,
    padding: '12px 16px',
    background: '#16213e',
    borderRadius: 10,
    cursor: 'pointer',
    transition: 'background 0.15s',
    border: '1px solid transparent',
  },
  activeCard: {
    background: '#1e2d50',
    border: '1px solid #e94560',
  },
  left: { flexShrink: 0 },
  playBtn: {
    width: 38,
    height: 38,
    borderRadius: '50%',
    border: 'none',
    color: '#fff',
    fontSize: 14,
    cursor: 'pointer',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
  },
  info: { flex: 1, minWidth: 0 },
  title: {
    fontSize: 15,
    fontWeight: 600,
    color: '#eee',
    whiteSpace: 'nowrap',
    overflow: 'hidden',
    textOverflow: 'ellipsis',
  },
  meta: {
    fontSize: 12,
    color: '#aaa',
    marginTop: 3,
    display: 'flex',
    flexWrap: 'wrap',
    gap: 4,
    alignItems: 'center',
  },
  dot: { color: '#555' },
  movie: { color: '#7a9cc0', fontStyle: 'italic' },
  moodRow: { display: 'flex', flexWrap: 'wrap', gap: 4, marginTop: 5 },
  moodTag: {
    fontSize: 10,
    padding: '2px 7px',
    background: '#1a1a3a',
    borderRadius: 10,
    color: '#888',
    border: '1px solid #2a2a4a',
  },
  right: {
    flexShrink: 0,
    display: 'flex',
    alignItems: 'center',
    gap: 10,
  },
  likedBadge: { color: '#e94560', fontSize: 14 },
  duration: { color: '#888', fontSize: 12, minWidth: 36, textAlign: 'right' },
};

export default SongCard;
