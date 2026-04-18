import axios from 'axios';

const API_BASE = process.env.REACT_APP_API_URL || 'https://smriti-backend.up.railway.app';

const client = axios.create({ baseURL: API_BASE });

// ── Stream URL (used by Player's <audio> element) ────────────────────────────
export const getStreamUrl = (songId) => `${API_BASE}/songs/stream/${songId}`;

// ── Error normaliser ─────────────────────────────────────────────────────────
// Returns null for 404 (caller treats as empty / not found).
// Throws a readable Error for network failures and 5xx errors.
// Never lets a raw AxiosError escape to components.
function handleApiError(error) {
  console.error('[API Error]', error);

  if (!error.response) {
    // Network error — server not reachable
    throw new Error('Cannot connect to server. Is the app running?');
  }

  if (error.response.status === 404) {
    return null;
  }

  throw new Error('Server error. Please try again later.');
}

// ── Songs ────────────────────────────────────────────────────────────────────

export const getAllSongs = async () => {
  try {
    const res = await client.get('/songs/');
    return res.data;
  } catch (error) {
    const result = handleApiError(error); // null for 404, throws otherwise
    return result ?? [];
  }
};

export const searchSongs = async (q, language = '', genre = '', mood = '') => {
  try {
    const params = new URLSearchParams();
    if (q) params.append('q', q);
    if (language) params.append('language', language);
    if (genre) params.append('genre', genre);
    if (mood) params.append('mood', mood);
    const res = await client.get(`/songs/search?${params.toString()}`);
    return res.data;
  } catch (error) {
    const result = handleApiError(error);
    return result ?? [];
  }
};

export const getSong = async (songId) => {
  try {
    const res = await client.get(`/songs/${songId}`);
    return res.data;
  } catch (error) {
    return handleApiError(error); // null if not found
  }
};

export const getLikedSongs = async () => {
  try {
    const res = await client.get('/songs/liked');
    return res.data;
  } catch (error) {
    const result = handleApiError(error);
    return result ?? [];
  }
};

export const likeSong = async (songId) => {
  try {
    const res = await client.post(`/songs/${songId}/like`);
    return res.data;
  } catch (error) {
    return handleApiError(error);
  }
};

export const dislikeSong = async (songId) => {
  try {
    const res = await client.post(`/songs/${songId}/dislike`);
    return res.data;
  } catch (error) {
    return handleApiError(error);
  }
};
