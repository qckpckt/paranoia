FROM python:3.8.1

RUN apt-get -qq update \
  && apt-get -qq -y install \
    python-opencv \
    cmake

ADD requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

COPY ./video_builder /opt/paranoia/video_builder

WORKDIR /opt/paranoia

CMD [ "bash" ]
