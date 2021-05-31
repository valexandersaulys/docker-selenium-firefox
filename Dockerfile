FROM python:3.9-alpine

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" > /etc/apk/repositories
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
RUN apk update

RUN apk add firefox-esr
RUN apk add xvfb
RUN pip install selenium pyvirtualdisplay

# install geckodriver
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.29.1/geckodriver-v0.29.1-linux64.tar.gz
RUN tar -zxf geckodriver-v0.29.1-linux64.tar.gz -C /usr/bin
RUN geckodriver --version

# Below is for demo purposes
# RUN mkdir /code
# ADD ./test-selenium.py /code/test-selenium.py
# WORKDIR /code
# RUN ./test-selenium.py