FROM jupyter/minimal-notebook:latest

ENV PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    POETRY_PATH=/opt/poetry \
    VENV_PATH=/home/jovyan/venv \
    POETRY_VERSION=1.1


WORKDIR /home/jovyan/work
RUN pip install pandas
RUN pip install dash
RUN pip install Werkzeug==2.0.3
RUN pip install jupyter-dash==0.4.1
RUN pip install ipykernel==5.5.4
RUN python3 -m ipykernel install --user
RUN jupyter labextension install jupyterlab-dash@0.4.0
RUN jupyter lab build