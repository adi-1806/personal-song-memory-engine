from pydantic import BaseModel


class RecommendationResponse(BaseModel):
    song_id: int
    title: str
    singer_name: str
    final_score: float
    rank: int
    play_count: int
    like_count: int
