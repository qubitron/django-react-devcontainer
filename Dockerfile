FROM node

WORKDIR /nodebuild
ADD frontend /nodebuild
ADD .env /nodebuild
RUN export $(grep -v '^#' .env | xargs) && npm install && npm run build

FROM tiangolo/uwsgi-nginx

EXPOSE 8000

# Indicate where uwsgi.ini lives
ENV UWSGI_INI uwsgi.ini

WORKDIR /app

# Using pip:
COPY requirements.txt /app
RUN python3 -m pip install -r requirements.txt

ADD . /app

COPY --from=0 /nodebuild/build /app/frontend/build
RUN export $(grep -v '^#' .env | xargs) && python3 manage.py collectstatic --noinput
RUN rm .env