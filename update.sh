aria2c -Z https://github.com/yt-dlp/yt-dlp-nightly-builds/releases/latest/download/yt-dlp.exe https://github.com/yt-dlp/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip
echo --batch-file - > config.txt
unzip ffmpeg-master-latest-win64-gpl.zip -d ffmpeg
mv ffmpeg/ffmpeg-master-latest-win64-gpl/bin/ffmpeg.exe ffmpeg.exe
mv ffmpeg/ffmpeg-master-latest-win64-gpl/bin/ffprobe.exe ffprobe.exe
mv ffmpeg/ffmpeg-master-latest-win64-gpl/bin/ffplay.exe ffplay.exe
zip final.zip yt-dlp.exe ffmpeg.exe ffprobe.exe ffplay.exe config.txt
rm -rf ffmpeg ffmpeg-master-latest-win64-gpl.zip ffmpeg.exe ffprobe.exe ffplay.exe config.txt yt-dlp.exe
