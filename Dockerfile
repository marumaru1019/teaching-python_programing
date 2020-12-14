FROM jupyter/datascience-notebook


COPY requirements-data.txt /tmp/requirements-data.txt
RUN pip install -r /tmp/requirements-data.txt

# CMD "start-notebook.sh --NotebookApp.token=''"