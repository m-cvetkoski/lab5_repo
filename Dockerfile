FROM python:3.13-rc-slim

WORKDIR /app

RUN mkdir templates
COPY index.html /app/templates

COPY app.py /app

RUN apt-get update
RUN pip install flask

ENV PORT=5000

EXPOSE ${PORT}

CMD [ "python", "app.py"]
