import { usePlayer } from '../context/PlayerContext';

// FIX 4 helper — builds meta line with no nulls and no duplicate values
function buildMetaLine(song) {
  const parts = [
    song.singer_name,
    song.music_director_name || null,
    song.language_name,
    song.movie_name || null,
  ]
    .filter(Boolean)
    .filter((v, i, arr) => arr.indexOf(v) === i); // deduplicate
  return parts.join(' · ');
}

function SongCard({ song, onToggleLike }) {
  const { currentSong, isPlaying, playSong, pauseSong } = usePlayer();

  const isCurrentSong = currentSong?.song_id === song.song_id;
  const showPause = isCurrentSong && isPlaying;

  const formatDuration = (secs) => {
    const m = Math.floor(secs / 60);
    const s = secs % 60;
    return `${m}:${s.toString().padStart(2, '0')}`;
  };

  // FIX 1 + FIX 3: only the play button triggers playback
  const handlePlayClick = (e) => {
    e.stopPropagation();
    if (showPause) {
      pauseSong();
    } else {
      playSong(song);
    }
  };

  // FIX 5: heart button — calls page's onToggleLike, does not manage state itself
  const handleHeartClick = (e) => {
    e.stopPropagation();
    if (onToggleLike) onToggleLike(song);
  };

  const metaLine = buildMetaLine(song);

  return (
    // FIX 3: no onClick on the card container
    <div style={{ ...styles.card, ...(isCurrentSong ? styles.activeCard : {}) }}>
      {/* Play / Pause button */}
      <div style={styles.left}>
        <button
          onClick={handlePlayClick}
          style={{ ...styles.playBtn, background: isCurrentSong ? '#e94560' : '#2a3a5a' }}
          title={showPause ? 'Pause' : 'Play'}
        >
          {showPause ? '⏸' : '▶'}
        </button>
      </div>

      {/* Song info — FIX 3: no onClick here */}
      <div style={styles.info}>
        {/* LINE 1: title */}
        <div style={styles.title}>{song.title}</div>

        {/* LINE 2: singer · music_director · language · movie (FIX 4) */}
        {metaLine && <div style={styles.meta}>{metaLine}</div>}

        {/* LINE 3: mood pills — only moods, never genre (FIX 4) */}
        {song.moods && song.moods.length > 0 && (
          <div style={styles.moodRow}>
            {song.moods.map((m) => (
              <span key={m} style={styles.moodTag}>{m}</span>
            ))}
          </div>
        )}
      </div>

      {/* Right section: heart + duration (FIX 5) */}
      <div style={styles.right}>
        <button
          onClick={handleHeartClick}
          style={{
            ...styles.heartBtn,
            color: song.is_liked ? '#e94560' : '#555',
          }}
          title={song.is_liked ? 'Unlike' : 'Like'}
        >
          {song.is_liked ? '♥' : '♡'}
        </button>
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
    border: '1px solid transparent',
    transition: 'background 0.15s',
  },
  activeCard: {
    background: '#1e2d50',
    border: '1px solid #e94560',
  },
  left: { flexShrink: 0 },
  playBtn: {
    width: 40,
    height: 40,
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
    whiteSpace: 'nowrap',
    overflow: 'hidden',
    textOverflow: 'ellipsis',
  },
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
  // FIX 5: min 40×40 clickable heart button
  heartBtn: {
    background: 'none',
    border: 'none',
    fontSize: 18,
    cursor: 'pointer',
    padding: 0,
    width: 40,
    height: 40,
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    lineHeight: 1,
  },
  duration: { color: '#888', fontSize: 12, minWidth: 36, textAlign: 'right' },
};

export default SongCard;
