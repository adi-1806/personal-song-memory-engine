"""
data/generate_retry_script.py
Generates data/csv/retry_songs.sh for only the failed downloads.
Run: python3 data/generate_retry_script.py
"""
import re
import pandas as pd
from pathlib import Path

log_path = Path("data/csv/download.log")
csv_path = Path("data/csv/lastfm_songs.csv")
out_path = Path("data/csv/retry_songs.sh")

# Extract failed song numbers from log
failed_ids = set()
for line in log_path.read_text(encoding="utf-8").splitlines():
    match = re.search(r"FAILED \[(\d+)\]", line)
    if match:
        failed_ids.add(int(match.group(1)))

print(f"Found {len(failed_ids)} failed songs to retry")

df = pd.read_csv(csv_path)

lines = [
    "#!/usr/bin/env bash",
    "set -uo pipefail",
    "mkdir -p songs",
    "FAILED=0",
    "TOTAL=0",
    "",
    "# Retry failed downloads using Safari cookies to bypass bot detection",
    "",
]

retried = 0
for i, row in df.iterrows():
    n = i + 1
    if n not in failed_ids:
        continue

    title  = str(row["title"]).replace('"', "")
    singer = str(row["singer"]).split(",")[0].strip().replace('"', "")
    out    = row["audio_file_path"]
    retried += 1

    lines.append(f"# [{retried}/{len(failed_ids)}] {title} — {singer}")
    lines.append(
        f'yt-dlp "ytsearch1:{title} {singer}"'
        f" --cookies-from-browser safari"
        f" --extract-audio --audio-format mp3 --audio-quality 0"
        f' --output "{out}"'
        f" --no-playlist --no-overwrites --sleep-interval 3"
        f" && TOTAL=$((TOTAL+1))"
        f' || {{ echo "FAILED [{retried}]: {title}"; FAILED=$((FAILED+1)); }}'
    )
    lines.append("")

lines += [
    'echo ""',
    'echo "==============================="',
    f'echo "Total retried   : {len(failed_ids)}"',
    'echo "Downloaded      : $TOTAL"',
    'echo "Failed          : $FAILED"',
    'echo "==============================="',
]

out_path.write_text("\n".join(lines), encoding="utf-8")
out_path.chmod(0o755)
print(f"✓ Retry script → {out_path}  ({retried} songs)")
print(f"\nRun with:")
print(f"  bash data/csv/retry_songs.sh 2>&1 | tee data/csv/retry.log")