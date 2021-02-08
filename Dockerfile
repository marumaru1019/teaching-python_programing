ARG BASE_CONTAINER=jupyter/tensorflow-notebook:latest
FROM $BASE_CONTAINER

COPY requirements-data.txt requirements-data.txt
RUN pip install -r requirements-data.txt

CMD "start-notebook.sh --NotebookApp.token=''"