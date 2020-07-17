FROM redis:6-alpine

RUN apk add --no-cache \
    stunnel \
    python3 \
    py3-pip

RUN python3 -m pip install honcho==1.0.*

WORKDIR /
COPY stunnel.conf ProcfileWithoutPwd ProcfileWithPwd start.sh /
RUN chmod +x start.sh

ENV PYTHONUNBUFFERED=1
CMD ["sh", "start.sh"]
