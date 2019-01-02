FROM jupyter/tensorflow-notebook

COPY requirements.txt /tmp/requirements.txt

RUN pip install -qr /tmp/requirements.txt

WORKDIR /notebooks