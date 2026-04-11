const MOODS = [
  { name: 'happy',      emoji: '😊' },
  { name: 'sad',        emoji: '😢' },
  { name: 'relaxed',    emoji: '😌' },
  { name: 'sleepy',     emoji: '😴' },
  { name: 'romantic',   emoji: '💕' },
  { name: 'energetic',  emoji: '⚡' },
  { name: 'devotional', emoji: '🙏' },
  { name: 'focus',      emoji: '🎯' },
  { name: 'nostalgic',  emoji: '🌙' },
  { name: 'lonely',     emoji: '🌧️' },
  { name: 'chill',      emoji: '❄️' },
  { name: 'workout',    emoji: '💪' },
  { name: 'gaming',     emoji: '🎮' },
  { name: 'party',      emoji: '🎉' },
  { name: 'feel good',  emoji: '✨' },
];

function MoodSelector({ activeMood, onMoodSelect }) {
  return (
    // .mood-grid-wrap controls display (grid on mobile, flex on desktop)
    <div className="mood-grid-wrap">
      {MOODS.map(({ name, emoji }) => {
        const isActive = activeMood === name;
        return (
          <button
            key={name}
            onClick={() => onMoodSelect(isActive ? null : name)}
            className="mood-card-btn"
            style={{
              ...styles.card,
              ...(isActive ? styles.activeCard : {}),
            }}
          >
            <span style={styles.emoji}>{emoji}</span>
            <span style={styles.label}>{name}</span>
          </button>
        );
      })}
    </div>
  );
}

const styles = {
  card: {
    display: 'flex',
    flexDirection: 'column',
    alignItems: 'center',
    gap: 4,
    padding: '10px 14px',
    background: '#16213e',
    border: '1px solid #2a3a5a',
    borderRadius: 10,
    cursor: 'pointer',
    color: '#ccc',
    transition: 'all 0.15s',
    minWidth: 72,
  },
  activeCard: {
    background: '#2a1a3a',
    border: '1px solid #e94560',
    color: '#e94560',
  },
  emoji: { fontSize: 20 },
  label: { fontSize: 10, textTransform: 'capitalize', fontWeight: 500 },
};

export default MoodSelector;
