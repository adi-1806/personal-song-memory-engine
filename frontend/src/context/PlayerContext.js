import { createContext, useContext, useRef, useState, useEffect, useCallback } from 'react';
import { getStreamUrl, likeSong, dislikeSong } from '../services/api';

const PlayerContext = createContext(null);

export function PlayerProvider({ children }) {
  // Single Audio instance — never recreated
  const audioRef = useRef(null);
  if (!audioRef.current) {
    audioRef.current = new Audio();
  }

  const [currentSong, setCurrentSong] = useState(null);
  const [isPlaying, setIsPlaying] = useState(false);
  const [songs, setSongs] = useState([]);   // kept for skip next/prev
  const [progress, setProgress] = useState(0);
  const [duration, setDuration] = useState(0);

  // Always-fresh snapshot for use inside stable callbacks
  const latestRef = useRef({ currentSong, songs });
  useEffect(() => { latestRef.current = { currentSong, songs }; });

  // ── Core playback ─────────────────────────────────────────────────────────

  const playSong = useCallback((song) => {
    if (!song) return;
    const audio = audioRef.current;
    if (latestRef.current.currentSong?.song_id === song.song_id) {
      // Same song — just resume
      audio.play().then(() => setIsPlaying(true)).catch(() => {});
    } else {
      audio.src = getStreamUrl(song.song_id);
      audio.load();
      setProgress(0);
      setDuration(0);
      setCurrentSong(song);
      audio.play().then(() => setIsPlaying(true)).catch(() => setIsPlaying(false));
    }
  }, []);

  const pauseSong = useCallback(() => {
    audioRef.current.pause();
    setIsPlaying(false);
  }, []);

  const togglePlay = useCallback(() => {
    const audio = audioRef.current;
    if (!latestRef.current.currentSong) return;
    if (audio.paused) {
      audio.play().then(() => setIsPlaying(true)).catch(() => {});
    } else {
      audio.pause();
      setIsPlaying(false);
    }
  }, []);

  // ── Skip ─────────────────────────────────────────────────────────────────

  const skipNext = useCallback(() => {
    const { songs: s, currentSong: cur } = latestRef.current;
    if (!s.length) return;
    const idx = cur ? s.findIndex((x) => x.song_id === cur.song_id) : -1;
    playSong(s[(idx + 1) % s.length]);
  }, [playSong]);

  const skipPrev = useCallback(() => {
    const audio = audioRef.current;
    const { songs: s, currentSong: cur } = latestRef.current;
    if (!s.length) return;
    if (audio.currentTime > 3) {
      audio.currentTime = 0;
      setProgress(0);
    } else {
      const idx = cur ? s.findIndex((x) => x.song_id === cur.song_id) : 0;
      playSong(s[(idx - 1 + s.length) % s.length]);
    }
  }, [playSong]);

  // ── Seek ─────────────────────────────────────────────────────────────────

  const seek = useCallback((e) => {
    const audio = audioRef.current;
    if (!audio.duration) return;
    const rect = e.currentTarget.getBoundingClientRect();
    const pct = (e.clientX - rect.left) / rect.width;
    const newTime = Math.max(0, Math.min(pct * audio.duration, audio.duration));
    audio.currentTime = newTime;
    setProgress(newTime);
  }, []);

  // ── Like / dislike for the bottom Player bar ──────────────────────────────

  const likeCurrentSong = useCallback(async () => {
    const cur = latestRef.current.currentSong;
    if (!cur) return;
    try {
      await likeSong(cur.song_id);
      setCurrentSong((prev) => (prev ? { ...prev, is_liked: true } : prev));
    } catch (e) {}
  }, []);

  const dislikeCurrentSong = useCallback(async () => {
    const cur = latestRef.current.currentSong;
    if (!cur) return;
    try {
      await dislikeSong(cur.song_id);
      setCurrentSong((prev) => (prev ? { ...prev, is_liked: false } : prev));
    } catch (e) {}
  }, []);

  // ── Sync helper — pages call this after liking from a card ────────────────

  const updateCurrentSong = useCallback((partial) => {
    setCurrentSong((prev) =>
      prev?.song_id === partial.song_id ? { ...prev, ...partial } : prev
    );
  }, []);

  // ── Audio event listeners ─────────────────────────────────────────────────

  useEffect(() => {
    const audio = audioRef.current;
    const onTime = () => setProgress(audio.currentTime);
    const onMeta = () => setDuration(audio.duration);
    const onEnded = () => skipNext();
    audio.addEventListener('timeupdate', onTime);
    audio.addEventListener('loadedmetadata', onMeta);
    audio.addEventListener('ended', onEnded);
    return () => {
      audio.removeEventListener('timeupdate', onTime);
      audio.removeEventListener('loadedmetadata', onMeta);
      audio.removeEventListener('ended', onEnded);
    };
  }, [skipNext]);

  return (
    <PlayerContext.Provider
      value={{
        currentSong,
        isPlaying,
        progress,
        duration,
        songs,
        setSongs,
        playSong,
        pauseSong,
        togglePlay,
        skipNext,
        skipPrev,
        seek,
        likeCurrentSong,
        dislikeCurrentSong,
        updateCurrentSong,
      }}
    >
      {children}
    </PlayerContext.Provider>
  );
}

export const usePlayer = () => useContext(PlayerContext);
