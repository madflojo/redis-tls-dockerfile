FROM redis:4.0.6

RUN apt-get update --fix-missing && \
    apt-get install -y stunnel python3-pip && \
    rm -rf /var/lib/apt/lists/*
RUN pip3 install honcho

ADD stunnel.conf /stunnel.conf
ADD Procfile /Procfile

WORKDIR /
ENV PYTHONUNBUFFERED=1
CMD ["honcho", "start"]