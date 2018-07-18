FROM node:8.11-alpine

RUN apk update && \
    apk --no-cache add pdftk poppler-utils ghostscript tesseract-ocr wget openssl ca-certificates && \
    update-ca-certificates

RUN wget -O /usr/share/tessdata/eng.traineddata https://github.com/mapboss/tessdata/raw/3.04.00/eng.traineddata && \
    wget -O /usr/share/tessdata/tha.traineddata https://github.com/mapboss/tessdata/raw/3.04.00/tha.traineddata

CMD "node"
