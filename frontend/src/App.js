import { BrowserRouter, Routes, Route, Link } from 'react-router-dom';
import HomePage from './pages/HomePage';
import LikedSongsPage from './pages/LikedSongsPage';

function App() {
  return (
    <BrowserRouter>
      <nav style={styles.nav}>
        <Link to="/" style={styles.brand}>🎵 Song Memory</Link>
        <div style={styles.links}>
          <Link to="/" style={styles.link}>Home</Link>
          <Link to="/liked" style={styles.link}>♥ Liked</Link>
        </div>
      </nav>
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/liked" element={<LikedSongsPage />} />
      </Routes>
    </BrowserRouter>
  );
}

const styles = {
  nav: {
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'space-between',
    padding: '12px 24px',
    background: '#16213e',
    borderBottom: '1px solid #2a2a4a',
    position: 'sticky',
    top: 0,
    zIndex: 100,
  },
  brand: {
    color: '#e94560',
    fontWeight: 700,
    fontSize: 18,
    textDecoration: 'none',
  },
  links: { display: 'flex', gap: 24 },
  link: { color: '#aaa', textDecoration: 'none', fontSize: 14 },
};

export default App;
