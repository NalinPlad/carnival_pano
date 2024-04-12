rm -r ./frames
rm output.png
mkdir ./frames
ffmpeg -i input.mp4 -vf "crop=13:ih:iw/2:0" ./frames/frame%03d.bmp
magick montage ./frames/*.bmp -mode concatenate -tile x1 output.png