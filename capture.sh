#!/bin/sh
# params: url, dirname
mkdir -p $2

echo Create PDF
xvfb-run -a -s "-screen 0 1280x1024x24" wkhtmltopdf --use-xserver --dpi 200  --page-size Letter $1 $2/capture.pdf

echo Create PNG
xvfb-run -a -s "-screen 0 1280x1024x24" wkhtmltoimage --use-xserver $1 $2/temp.png
pngcrush $2/temp.png $2/capture.png
ls -l $2/*.png
rm $2/temp.png

echo Create WARC
wget --warc-tempdir=/tmp --page-requisites --warc-file=$2/capture $1
