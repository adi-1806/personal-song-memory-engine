import { BrowserRouter, Routes, Route, Link, NavLink } from 'react-router-dom';
import { PlayerProvider } from './context/PlayerContext';
import Player from './components/Player';
import HomePage from './pages/HomePage';
import LikedSongsPage from './pages/LikedSongsPage';
import './mobile.css';

function App() {
  return (
    <PlayerProvider>
      <BrowserRouter>
        {/* Desktop top nav — .top-nav CSS hides this on mobile */}
        <nav className="top-nav" style={styles.nav}>
          <Link to="/" style={styles.brand}>🎵 Smriti</Link>
          <div style={styles.links}>
            <NavLink
              to="/"
              end
              style={({ isActive }) => ({ ...styles.link, color: isActive ? '#e94560' : '#aaa' })}
            >
              Home
            </NavLink>
            <NavLink
              to="/liked"
              style={({ isActive }) => ({ ...styles.link, color: isActive ? '#e94560' : '#aaa' })}
            >
              ♥ Liked
            </NavLink>
          </div>
        </nav>

        {/* Page routes */}
        <Routes>
          <Route path="/" element={<HomePage />} />
          <Route path="/liked" element={<LikedSongsPage />} />
        </Routes>

        {/* Single persistent player — lives outside Routes so it never unmounts */}
        <Player />

        {/* Mobile bottom tab bar — .bottom-tab-bar CSS hides this on desktop */}
        <nav className="bottom-tab-bar" aria-label="Mobile navigation">
          <NavLink
            to="/"
            end
            className={({ isActive }) => `tab-item${isActive ? ' active' : ''}`}
          >
            <span className="tab-icon">🏠</span>
            <span className="tab-label">Home</span>
          </NavLink>
          <NavLink
            to="/liked"
            className={({ isActive }) => `tab-item${isActive ? ' active' : ''}`}
          >
            <span className="tab-icon">♥</span>
            <span className="tab-label">Liked</span>
          </NavLink>
        </nav>
      </BrowserRouter>
    </PlayerProvider>
  );
}

const styles = {
  nav: {
    /* display is controlled by .top-nav class in mobile.css — do not set here */
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
  link: { textDecoration: 'none', fontSize: 14 },
};

export default App;
