FROM redis:4.0.11

RUN apt-get update --fix-missing && \
    apt-get install -y stunnel python-pip && \
    rm -rf /var/lib/apt/lists/*
RUN pip install honcho

ADD stunnel.conf /stunnel.conf
ADD Procfile /Procfile

WORKDIR /
CMD honcho start
