capture-n-preserve
==================

Given a uri, capture a web page in multiple formats for preservation

Uses these tools:

* wkhtmltopdf
* wkhtmltoimage
* wget (recent version, to create warcs)

Installing

* Install [wkhtmltopdf and wkhtmltoimage](http://code.google.com/p/wkhtmltopdf/). On Ubuntu I used [these instructions](http://avad.hu/t/content/setting-wkthmltopdf-ubuntu-server-1004). (It was written for 10.04 but it worked on my 12.04 installation; the compilation can take hours though). Don't skip the installation of xvfb. On a Mac, use Homebrew: brew install wkhtmltopdf
* Install wget. If your distribution doesn't yet include wget 1.14, you'll need to grab the source and compile it from [gnu.org](https://www.gnu.org/software/wget/).
* Install pngcrush

Running

* ./capture.sh [URI] [DIRECTORY]
* The output directory will be created if it doesn't exist
* The uri will be fetched, and the html will be rendered to a PDF, a PNG and a WARC. The PNG will be crushed to save space (wkhtmltoimage creates very large pngs).

TODO

* figure out best WARC params
* bag the results
* save mirror as well as warc
* tracking db
* look at [full-text indexing the warcs](http://ianmilligan.ca/2012/12/13/warc-files-part-two-using-warc-tools/)

