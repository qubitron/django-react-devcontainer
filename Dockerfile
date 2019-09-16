FROM node

WORKDIR /nodebuild
ADD frontend /nodebuild
RUN npm install && npm run build

# Python support can be specified down to the minor or micro version
# (e.g. 3.6 or 3.6.3).
# OS Support also exists for jessie & stretch (slim and full).
# See https://hub.docker.com/r/library/python/ for all supported Python
# tags from Docker Hub.
FROM tiangolo/uwsgi-nginx

# If you prefer miniconda:
#FROM continuumio/miniconda3

EXPOSE 8000

# Indicate where uwsgi.ini lives
ENV UWSGI_INI uwsgi.ini

WORKDIR /app

# Using pip:
COPY requirements.txt /app
RUN python3 -m pip install -r requirements.txt

ADD . /app

COPY --from=0 /nodebuild/build /app/frontend/build
RUN python3 manage.py collectstatic --noinput
