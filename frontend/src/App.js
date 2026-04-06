import { BrowserRouter, Routes, Route, Link } from 'react-router-dom';
import { PlayerProvider } from './context/PlayerContext';
import Player from './components/Player';
import HomePage from './pages/HomePage';
import LikedSongsPage from './pages/LikedSongsPage';

function App() {
  return (
    <PlayerProvider>
      <BrowserRouter>
        <nav style={styles.nav}>
          <Link to="/" style={styles.brand}>🎵 Smriti</Link>
          <div style={styles.links}>
            <Link to="/" style={styles.link}>Home</Link>
            <Link to="/liked" style={styles.link}>♥ Liked</Link>
          </div>
        </nav>
        <Routes>
          <Route path="/" element={<HomePage />} />
          <Route path="/liked" element={<LikedSongsPage />} />
        </Routes>
        {/* Single persistent player — lives outside Routes so it never unmounts */}
        <Player />
      </BrowserRouter>
    </PlayerProvider>
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
