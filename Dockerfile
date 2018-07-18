FROM node:8.11-alpine

RUN apk update && \
    apk add --no-cache poppler-utils && \
    apk add tesseract-ocr

CMD "node"
