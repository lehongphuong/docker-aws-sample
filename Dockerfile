FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
ADD nginx.conf /etc/nginx/
ADD run.sh /run.sh
COPY . /code/

ENV LISTEN_PORT=8000

EXPOSE 8000
CMD /run.sh