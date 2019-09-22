read -p 'video thumbnail: ' thumb
#    ffmpeg -i $thumb -filter_complex "[0]split[body][pre];
#         [pre]trim=duration=1,fade=d=1:alpha=1,setpts=PTS+(5/TB)[jt];
#         [body]trim=1,setpts=PTS-STARTPTS[main];
#         [main][jt]overlay" null.mp4 
    ffmpeg -i $thumb -vf scale=512:-1 -vcodec libx264 -vsync 2 -preset veryslow -an thumb.mp4