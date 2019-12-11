FROM redis:5-alpine

RUN apk add --no-cache \
    stunnel~=5.48 \
    python3~=3.7 \
    && pip3 install honcho==1.0.*

WORKDIR /
COPY stunnel.conf Procfile /

ENV PYTHONUNBUFFERED=1
CMD ["honcho", "start"]
