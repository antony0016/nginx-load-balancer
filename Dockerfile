FROM python:3.7-alpine

# install dependencies for uwsgi
RUN apk add --no-cache gcc musl-dev linux-headers

# instal uwsgi and flask
RUN pip install uwsgi flask

# copy the app code
COPY ./py/app.py /app.py

# run the app
# CMD ["uwsgi", "--http", ":8080", "--wsgi-file", "/app.py", "--callable", "app", "--processes", "4", "--threads", "2"]