# A Dockerfile fro nodejs_and_python3

FROM python:3-buster

RUN apt-get update && apt-get install -y nodejs npm
RUN pip install --upgrade pip && pip install pipenv
RUN npm i -g npm

CMD python --version && pip --version && pipenv --version && node -v && npm -v
