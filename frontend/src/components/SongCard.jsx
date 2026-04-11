import { useState } from 'react';
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
  const [toast, setToast] = useState(null);

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

  // FIX 5: async heart — catches failures, reverts state (via no-update on error),
  // shows a brief toast
  const handleHeartClick = async (e) => {
    e.stopPropagation();
    if (!onToggleLike) return;
    try {
      await onToggleLike(song);
    } catch {
      // onToggleLike throws on network/server error — state was NOT updated by caller,
      // so the icon automatically reverts. Just show the toast.
      setToast('Could not update. Try again.');
      setTimeout(() => setToast(null), 3000);
    }
  };

  const metaLine = buildMetaLine(song);

  return (
    // FIX 3: no onClick on the card container
    <div style={{ ...styles.card, ...(isCurrentSong ? styles.activeCard : {}) }}>
      {/* Play / Pause button */}
      <div style={styles.left}>
        <button
          onClick={handlePlayClick}
          className="song-play-button"
          style={{ ...styles.playBtn, background: isCurrentSong ? '#e94560' : '#2a3a5a' }}
          title={showPause ? 'Pause' : 'Play'}
        >
          {showPause ? '⏸' : '▶'}
        </button>
      </div>

      {/* Song info */}
      <div style={styles.info}>
        {/* LINE 1: title — 2-line clamp on mobile */}
        <div className="song-title-clamp" style={styles.title}>{song.title}</div>

        {/* LINE 2: singer · music_director · language · movie */}
        {metaLine && <div style={styles.meta}>{metaLine}</div>}

        {/* LINE 3: mood pills — horizontal scroll if overflow */}
        {song.moods && song.moods.length > 0 && (
          <div className="song-mood-scroll">
            {song.moods.map((m) => (
              <span key={m} style={styles.moodTag}>{m}</span>
            ))}
          </div>
        )}

        {/* Error toast — shown briefly on like/dislike failure */}
        {toast && <div style={styles.toast}>{toast}</div>}
      </div>

      {/* Right section: heart + duration */}
      <div style={styles.right}>
        <button
          onClick={handleHeartClick}
          className="song-heart-button"
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
    width: 44,
    height: 44,
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
  },
  meta: {
    fontSize: 12,
    color: '#aaa',
    marginTop: 3,
    whiteSpace: 'nowrap',
    overflow: 'hidden',
    textOverflow: 'ellipsis',
  },
  moodTag: {
    fontSize: 10,
    padding: '2px 7px',
    background: '#1a1a3a',
    borderRadius: 10,
    color: '#888',
    border: '1px solid #2a2a4a',
    flexShrink: 0,
    whiteSpace: 'nowrap',
  },
  toast: {
    marginTop: 4,
    fontSize: 11,
    color: '#e94560',
  },
  right: {
    flexShrink: 0,
    display: 'flex',
    alignItems: 'center',
    gap: 10,
  },
  heartBtn: {
    background: 'none',
    border: 'none',
    fontSize: 18,
    cursor: 'pointer',
    padding: 0,
    width: 44,
    height: 44,
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    lineHeight: 1,
  },
  duration: { color: '#888', fontSize: 12, minWidth: 36, textAlign: 'right' },
};

export default SongCard;
