import { usePlayer } from '../context/PlayerContext';

function Player() {
  const {
    currentSong, isPlaying, progress, duration,
    togglePlay, skipNext, skipPrev, seek,
    likeCurrentSong, dislikeCurrentSong,
    playError, clearPlayError,
  } = usePlayer();

  const fmt = (secs) => {
    if (!secs || isNaN(secs)) return '0:00';
    const m = Math.floor(secs / 60);
    const s = Math.floor(secs % 60);
    return `${m}:${s.toString().padStart(2, '0')}`;
  };

  const pct = duration ? (progress / duration) * 100 : 0;
  const likeColor = currentSong?.is_liked ? '#e94560' : '#555';

  return (
    <div className="player-bar">

      {/* ── Playback error banner (both layouts) ─────────────── */}
      {playError && (
        <div style={errorBannerStyle}>
          <span>{playError}</span>
          <button onClick={clearPlayError} style={errorDismissStyle}>✕</button>
        </div>
      )}

      {/* ── Mobile layout (hidden on desktop via CSS) ─────── */}
      <div className="player-mobile-inner">

        {/* ROW 1: Song title + singer */}
        <div className="player-row-1">
          {currentSong ? (
            <>
              <div className="player-song-title-m">{currentSong.title}</div>
              <div className="player-song-singer-m">
                {currentSong.singer_name} · {currentSong.language_name}
              </div>
            </>
          ) : (
            <div className="player-empty-m">No song selected</div>
          )}
        </div>

        {/* ROW 2: Progress bar (full width) */}
        <div className="player-row-2">
          <div className="player-progress-bar-m" onClick={seek} title="Seek">
            <div className="player-progress-fill" style={{ width: `${pct}%` }} />
          </div>
        </div>

        {/* ROW 3: [Skip prev] [Play/Pause] [Skip next] [Heart] [Dislike] [Time] */}
        <div className="player-row-3">
          <button
            className="player-ctrl-btn-m"
            onClick={skipPrev}
            title="Previous"
          >⏮</button>
          <button
            className="player-play-btn-m"
            onClick={togglePlay}
            disabled={!currentSong}
            title={isPlaying ? 'Pause' : 'Play'}
          >
            {isPlaying ? '⏸' : '▶'}
          </button>
          <button
            className="player-ctrl-btn-m"
            onClick={skipNext}
            title="Next"
          >⏭</button>
          <button
            className="player-like-btn-m"
            onClick={likeCurrentSong}
            disabled={!currentSong}
            style={{ color: likeColor }}
            title="Like"
          >♥</button>
          <button
            className="player-ctrl-btn-m"
            onClick={dislikeCurrentSong}
            disabled={!currentSong}
            title="Dislike"
          >✕</button>
          <span className="player-time-m">
            {fmt(progress)} / {fmt(duration)}
          </span>
        </div>
      </div>

      {/* ── Desktop layout (hidden on mobile via CSS) ─────── */}
      <div className="player-desktop-inner">

        {/* Song info */}
        <div style={desktopStyles.songInfo}>
          {currentSong ? (
            <>
              <div style={desktopStyles.title}>{currentSong.title}</div>
              <div style={desktopStyles.singer}>
                {currentSong.singer_name} · {currentSong.language_name}
              </div>
            </>
          ) : (
            <div style={desktopStyles.empty}>No song selected</div>
          )}
        </div>

        {/* Center: controls + progress bar */}
        <div style={desktopStyles.center}>
          <div style={desktopStyles.controls}>
            <button onClick={skipPrev} style={desktopStyles.ctrlBtn} title="Previous">⏮</button>
            <button
              onClick={togglePlay}
              style={desktopStyles.playBtn}
              disabled={!currentSong}
              title={isPlaying ? 'Pause' : 'Play'}
            >
              {isPlaying ? '⏸' : '▶'}
            </button>
            <button onClick={skipNext} style={desktopStyles.ctrlBtn} title="Next">⏭</button>
          </div>
          <div style={desktopStyles.progressRow}>
            <span style={desktopStyles.time}>{fmt(progress)}</span>
            <div style={desktopStyles.progressBar} onClick={seek} title="Seek">
              <div style={{ ...desktopStyles.progressFill, width: `${pct}%` }} />
            </div>
            <span style={desktopStyles.time}>{fmt(duration)}</span>
          </div>
        </div>

        {/* Like / Dislike */}
        <div style={desktopStyles.likeSection}>
          <button
            onClick={likeCurrentSong}
            style={{ ...desktopStyles.likeBtn, color: likeColor }}
            disabled={!currentSong}
            title="Like"
          >♥</button>
          <button
            onClick={dislikeCurrentSong}
            style={desktopStyles.likeBtn}
            disabled={!currentSong}
            title="Dislike"
          >✕</button>
        </div>
      </div>
    </div>
  );
}

const errorBannerStyle = {
  position: 'absolute',
  top: -38,
  left: 0,
  right: 0,
  background: '#3a0a18',
  borderTop: '1px solid #e94560',
  color: '#e94560',
  fontSize: 13,
  padding: '6px 16px',
  display: 'flex',
  alignItems: 'center',
  justifyContent: 'space-between',
  gap: 8,
};

const errorDismissStyle = {
  background: 'none',
  border: 'none',
  color: '#e94560',
  cursor: 'pointer',
  fontSize: 14,
  padding: 0,
  flexShrink: 0,
};

const desktopStyles = {
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
    minWidth: 44,
    minHeight: 44,
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    lineHeight: 1,
  },
  playBtn: {
    width: 44,
    height: 44,
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
    minWidth: 44,
    minHeight: 44,
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
  },
};

export default Player;
