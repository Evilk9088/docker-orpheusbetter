FROM python:3

WORKDIR /

RUN groupadd -g 1000 orpheus && useradd -u 1000 -g orpheus -d /config orpheus && \
    apt-get update && \
    apt-get install -y --no-install-recommends git mktorrent flac lame sox && \
    git clone https://github.com/ApexWeed/orpheusbetter-crawler

WORKDIR /orpheusbetter-crawler

COPY root ./

RUN pip install -r requirements.txt && \
    chown -R orpheus:orpheus ./

ENTRYPOINT ./start.sh
