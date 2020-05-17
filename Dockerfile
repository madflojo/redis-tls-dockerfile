FROM redis:6-alpine

RUN apk add --no-cache \
    stunnel \
    python3 \
    && pip3 install honcho==1.0.*

WORKDIR /
COPY stunnel.conf Procfile /

ENV PYTHONUNBUFFERED=1
CMD ["honcho", "start"]
