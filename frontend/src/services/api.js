import axios from 'axios';

const API_BASE = process.env.REACT_APP_API_URL || 'http://localhost:8000';

const client = axios.create({ baseURL: API_BASE });

// ── Stream URL (used by Player's <audio> element) ────────────────────────────
export const getStreamUrl = (songId) => `${API_BASE}/songs/stream/${songId}`;

// ── Songs ────────────────────────────────────────────────────────────────────
export const getAllSongs = () => client.get('/songs/');

export const searchSongs = (q, language = '', genre = '', mood = '') => {
  const params = new URLSearchParams();
  if (q) params.append('q', q);
  if (language) params.append('language', language);
  if (genre) params.append('genre', genre);
  if (mood) params.append('mood', mood);
  return client.get(`/songs/search?${params.toString()}`);
};

export const getSong = (songId) => client.get(`/songs/${songId}`);

export const getLikedSongs = () => client.get('/songs/liked');

export const likeSong = (songId) => client.post(`/songs/${songId}/like`);

export const dislikeSong = (songId) => client.post(`/songs/${songId}/dislike`);
