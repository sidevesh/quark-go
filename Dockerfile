FROM golang:1.11-stretch
RUN curl -sL https://deb.nodesource.com/setup_10.x > setup_10.x \
  && chmod +x setup_10.x \
    && ./setup_10.x \
      && rm setup_10.x
RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    build-essential \
    libgtk-3-dev \
    libwebkit2gtk-4.0-dev \
    nodejs \
      && rm -rf /var/lib/apt/lists
RUN go get github.com/zserge/webview
WORKDIR /usr/src/app
CMD sh build.sh

