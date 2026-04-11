import { Component } from 'react';

/**
 * Top-level error boundary — catches any unhandled render error in the tree.
 * Never shows raw stack traces to the user.
 * Wrap the entire <App /> in this component in index.js.
 */
class ErrorBoundary extends Component {
  constructor(props) {
    super(props);
    this.state = { hasError: false };
  }

  static getDerivedStateFromError() {
    return { hasError: true };
  }

  componentDidCatch(error, info) {
    // Log to console; in production this would go to a logging service
    console.error('[ErrorBoundary] Render error caught:', error, info.componentStack);
  }

  render() {
    if (this.state.hasError) {
      return (
        <div style={styles.container}>
          <div style={styles.box}>
            <div style={styles.icon}>⚠️</div>
            <h2 style={styles.title}>Something went wrong.</h2>
            <p style={styles.message}>Please refresh the page.</p>
            <button
              style={styles.btn}
              onClick={() => window.location.reload()}
            >
              Refresh
            </button>
          </div>
        </div>
      );
    }

    return this.props.children;
  }
}

const styles = {
  container: {
    minHeight: '100vh',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    background: '#0f0f1a',
    padding: 24,
  },
  box: {
    textAlign: 'center',
    padding: 48,
    background: '#16213e',
    borderRadius: 16,
    border: '1px solid #2a2a4a',
    maxWidth: 420,
    width: '100%',
  },
  icon: { fontSize: 48, marginBottom: 16 },
  title: { fontSize: 22, fontWeight: 700, color: '#eee', marginBottom: 12 },
  message: { fontSize: 16, color: '#aaa', marginBottom: 28 },
  btn: {
    background: '#e94560',
    color: '#fff',
    border: 'none',
    borderRadius: 8,
    padding: '12px 32px',
    fontSize: 16,
    cursor: 'pointer',
    fontWeight: 600,
  },
};

export default ErrorBoundary;
