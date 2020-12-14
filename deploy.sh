
docker pull jupyter/datascience-notebook:latest

docker run -it --rm jupyter/datascience-notebook /bin/bash

docker run  \
    --user root \
    -e GRANT_SUDO=yes \
    -e NB_UID=$UID \
    -e NB_GID=$GID \
    -e TZ=Asia/Tokyo \
    -p 8888:8888 \
    --name notebook \
    -v ~/path/to/directory/:/home/jovyan/work \
    jupyter/datascience-notebook \
    start-notebook.sh \
    --NotebookApp.password='sha1:YOUR_PASSWORD_HASH_VALUE'