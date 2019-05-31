FROM python:3.7-slim-stretch

RUN mkdir /images

WORKDIR /code
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .
ENTRYPOINT ["python", "mface.py" "/images"]
