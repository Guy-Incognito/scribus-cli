FROM ubuntu:bionic

# TODO install arial
RUN apt update &&\
    apt install -y --no-install-recommends software-properties-common &&\
    add-apt-repository ppa:scribus/ppa &&\
    apt update &&\
    apt install -y --no-install-recommends python scribus-ng xvfb xauth ttf-mscorefonts-installer &&\
    fc-cache

ADD https://raw.githubusercontent.com/aoloe/scribus-script-repository/master/to-pdf/to-pdf.py /usr/bin

