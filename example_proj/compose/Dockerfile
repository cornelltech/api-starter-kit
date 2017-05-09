FROM python:3.6
ENV PYTHONUNBUFFERED 1

COPY ./compose/entrypoint.sh /entrypoint.sh
RUN sed -i 's/\r//' /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY ./compose/start-dev.sh /start-dev.sh
RUN sed -i 's/\r//' /start-dev.sh
RUN chmod +x /start-dev.sh

RUN mkdir /code
WORKDIR /code
ADD . /code/
RUN pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
