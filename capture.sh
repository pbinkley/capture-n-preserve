#!/bin/sh
# params: url, dirname
mkdir -p $2
xvfb-run -a -s "-screen 0 1280x1024x24" wkhtmltopdf --use-xserver --dpi 200  --page-size Letter $1 $2/capture.pdf
xvfb-run -a -s "-screen 0 1280x1024x24" wkhtmltoimage --use-xserver $1 $2/temp.png
pngcrush $2/temp.png $2/capture.png
wget-warc --page-requisites --warc-file=$2/capture $1
