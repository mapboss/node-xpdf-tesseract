FROM node:8.11-alpine

RUN apk update && \
    apk --no-cache add poppler-utils tesseract-ocr wget openssl
    
RUN wget -O /usr/share/tessdata/en.traineddata https://github.com/mapboss/tessdata/raw/3.04.00/en.traineddata && \
    wget -O /usr/share/tessdata/tha.traineddata https://github.com/mapboss/tessdata/raw/3.04.00/tha.traineddata

CMD "node"
