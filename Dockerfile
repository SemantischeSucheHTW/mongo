FROM mongo:4.0.4-xenial

COPY create-user-rawpagewriter.js /docker-entrypoint-initdb.d/create-user-rawpagewriter.js
COPY create-user-genericparser.js /docker-entrypoint-initdb.d/create-user-genericparser.js
COPY create-user-downloader.js /docker-entrypoint-initdb.d/create-user-downloader.js

COPY converted_rawpages.zip /converted_rawpages.zip
COPY import_rawpages.sh /docker-entrypoint-initdb.d/import_rawpages.sh

RUN apt-get update && apt-get install -y zip unzip

ENV MONGO_INITDB_ROOT_USERNAME root
ENV MONGO_INITDB_ROOT_PASSWORD spezanw
ENV MONGO_INITDB_DATABASE default

ENV RAWPAGES_DATABASE default
ENV RAWPAGES_COLLECTION rawpages
ENV RAWPAGES_ARCHIVE /converted_rawpages.zip
ENV RAWPAGES_FILE converted_rawpages.json
