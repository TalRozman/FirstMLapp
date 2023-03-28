FROM python:3-slim

COPY . /myapp

WORKDIR /myapp/

RUN apt update && apt upgrade -y
RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]