curl https://github.com/yt-dlp/yt-dlp-nightly-builds/releases/latest/download/yt-dlp.exe > yt-dlp.exe
curl https://github.com/yt-dlp/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip > ffmpeg.zip
echo --batch-file - > config.txt
zip yt-dlp.exe ffmpeg.zip config.txt -d final.zip
rm yt-dlp.exe ffmpeg.zip config.txt

