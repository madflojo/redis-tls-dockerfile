FROM redis:6.0.9-alpine

RUN apk add --no-cache \
    stunnel \
    python3 \
    py3-pip

RUN python3 -m pip install honcho==1.0.*

WORKDIR /
COPY stunnel.conf Procfile start.sh /
RUN chmod +x start.sh

ENV PYTHONUNBUFFERED=1
CMD ["sh", "start.sh"]
