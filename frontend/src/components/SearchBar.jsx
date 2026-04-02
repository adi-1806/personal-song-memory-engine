import { useState } from 'react';

function SearchBar({ onSearch, onClear }) {
  const [query, setQuery] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    onSearch(query.trim());
  };

  const handleChange = (e) => {
    const val = e.target.value;
    setQuery(val);
    if (val.trim() === '' && onClear) onClear();
  };

  const handleClear = () => {
    setQuery('');
    if (onClear) onClear();
  };

  return (
    <form onSubmit={handleSubmit} style={styles.form}>
      <div style={styles.inputWrap}>
        <span style={styles.icon}>🔍</span>
        <input
          type="text"
          value={query}
          onChange={handleChange}
          placeholder="Search by song, singer, genre, mood, language…"
          style={styles.input}
        />
        {query && (
          <button type="button" onClick={handleClear} style={styles.clearBtn}>✕</button>
        )}
      </div>
      <button type="submit" style={styles.searchBtn}>Search</button>
    </form>
  );
}

const styles = {
  form: {
    display: 'flex',
    gap: 10,
    width: '100%',
    maxWidth: 700,
  },
  inputWrap: {
    flex: 1,
    display: 'flex',
    alignItems: 'center',
    background: '#1e2a4a',
    borderRadius: 8,
    padding: '0 12px',
    border: '1px solid #2a3a5a',
  },
  icon: { fontSize: 14, marginRight: 8, opacity: 0.6 },
  input: {
    flex: 1,
    background: 'transparent',
    border: 'none',
    outline: 'none',
    color: '#eee',
    fontSize: 15,
    padding: '12px 0',
  },
  clearBtn: {
    background: 'none',
    border: 'none',
    color: '#aaa',
    cursor: 'pointer',
    fontSize: 14,
    padding: '0 4px',
  },
  searchBtn: {
    background: '#e94560',
    color: '#fff',
    border: 'none',
    borderRadius: 8,
    padding: '12px 22px',
    fontSize: 14,
    cursor: 'pointer',
    fontWeight: 600,
  },
};

export default SearchBar;
