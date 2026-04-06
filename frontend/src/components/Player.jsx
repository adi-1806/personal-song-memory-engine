import { usePlayer } from '../context/PlayerContext';

function Player() {
  const {
    currentSong, isPlaying, progress, duration,
    togglePlay, skipNext, skipPrev, seek,
    likeCurrentSong, dislikeCurrentSong,
  } = usePlayer();

  const fmt = (secs) => {
    if (!secs || isNaN(secs)) return '0:00';
    const m = Math.floor(secs / 60);
    const s = Math.floor(secs % 60);
    return `${m}:${s.toString().padStart(2, '0')}`;
  };

  const pct = duration ? (progress / duration) * 100 : 0;

  return (
    <div style={styles.player}>
      {/* Song info */}
      <div style={styles.songInfo}>
        {currentSong ? (
          <>
            <div style={styles.title}>{currentSong.title}</div>
            <div style={styles.singer}>
              {currentSong.singer_name} · {currentSong.language_name}
            </div>
          </>
        ) : (
          <div style={styles.empty}>No song selected</div>
        )}
      </div>

      {/* Controls */}
      <div style={styles.center}>
        <div style={styles.controls}>
          <button onClick={skipPrev} style={styles.ctrlBtn} title="Previous">⏮</button>
          <button
            onClick={togglePlay}
            style={styles.playBtn}
            title={isPlaying ? 'Pause' : 'Play'}
            disabled={!currentSong}
          >
            {isPlaying ? '⏸' : '▶'}
          </button>
          <button onClick={skipNext} style={styles.ctrlBtn} title="Next">⏭</button>
        </div>

        {/* Progress bar */}
        <div style={styles.progressRow}>
          <span style={styles.time}>{fmt(progress)}</span>
          <div style={styles.progressBar} onClick={seek} title="Seek">
            <div style={{ ...styles.progressFill, width: `${pct}%` }} />
          </div>
          <span style={styles.time}>{fmt(duration)}</span>
        </div>
      </div>

      {/* Like / Dislike */}
      <div style={styles.likeSection}>
        <button
          onClick={likeCurrentSong}
          style={{
            ...styles.likeBtn,
            color: currentSong?.is_liked ? '#e94560' : '#555',
          }}
          title="Like"
          disabled={!currentSong}
        >
          ♥
        </button>
        <button
          onClick={dislikeCurrentSong}
          style={styles.likeBtn}
          title="Dislike"
          disabled={!currentSong}
        >
          ✕
        </button>
      </div>
    </div>
  );
}

const styles = {
  player: {
    position: 'fixed',
    bottom: 0,
    left: 0,
    right: 0,
    display: 'flex',
    alignItems: 'center',
    gap: 20,
    padding: '10px 24px',
    background: '#0d1b35',
    borderTop: '1px solid #2a3a5a',
    zIndex: 200,
    minHeight: 72,
  },
  songInfo: { width: 220, flexShrink: 0 },
  title: {
    fontSize: 14,
    fontWeight: 600,
    color: '#eee',
    whiteSpace: 'nowrap',
    overflow: 'hidden',
    textOverflow: 'ellipsis',
  },
  singer: { fontSize: 12, color: '#888', marginTop: 2 },
  empty: { fontSize: 13, color: '#555' },
  center: { flex: 1, display: 'flex', flexDirection: 'column', gap: 6, alignItems: 'center' },
  controls: { display: 'flex', alignItems: 'center', gap: 14 },
  ctrlBtn: {
    background: 'none',
    border: 'none',
    color: '#aaa',
    fontSize: 18,
    cursor: 'pointer',
    padding: 4,
    lineHeight: 1,
  },
  playBtn: {
    width: 40,
    height: 40,
    borderRadius: '50%',
    background: '#e94560',
    border: 'none',
    color: '#fff',
    fontSize: 16,
    cursor: 'pointer',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
  },
  progressRow: {
    display: 'flex',
    alignItems: 'center',
    gap: 8,
    width: '100%',
    maxWidth: 500,
  },
  time: { fontSize: 11, color: '#666', minWidth: 32, textAlign: 'center' },
  progressBar: {
    flex: 1,
    height: 4,
    background: '#2a3a5a',
    borderRadius: 2,
    cursor: 'pointer',
    position: 'relative',
  },
  progressFill: {
    height: '100%',
    background: '#e94560',
    borderRadius: 2,
    transition: 'width 0.1s linear',
  },
  likeSection: { display: 'flex', gap: 8, flexShrink: 0 },
  likeBtn: {
    background: 'none',
    border: 'none',
    color: '#555',
    fontSize: 20,
    cursor: 'pointer',
    padding: 4,
  },
};

export default Player;
