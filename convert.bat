rem 解像度別のフォルダを作成する
mkdir 360p 720p 1080p
ffmpeg -i video.mp4 -c:v libx264 -crf 32 -c:a copy -vf scale=-1:1080 -pix_fmt yuv420p -f hls -hls_list_size 0 -hls_time 6 -hls_playlist_type vod -segment_format mpegts -hls_segment_filename "1080p\1080p%%3d.ts" -flags +global_header 1080p\1080p.m3u8
ffmpeg -i video.mp4 -c:v libx264 -crf 30 -c:a copy -vf scale=-1:720 -pix_fmt yuv420p -f hls -hls_list_size 0 -hls_time 6 -hls_playlist_type vod -segment_format mpegts -hls_segment_filename "720p\720p%%3d.ts" -flags +global_header 720p\720p.m3u8
ffmpeg -i video.mp4 -c:v libx264 -crf 28 -c:a copy -vf scale=-1:360 -pix_fmt yuv420p -f hls -hls_list_size 0 -hls_time 6 -hls_playlist_type vod -segment_format mpegts -hls_segment_filename "360p\360p%%3d.ts" -flags +global_header 360p\360p.m3u8
pause