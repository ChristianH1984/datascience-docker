FROM jupyter/tensorflow-notebook

COPY requirements.txt /tmp/requirements.txt

RUN pip install -qr /tmp/requirements.txt

COPY docker-entrypoint.sh /docker-entrypoint.sh

WORKDIR /notebooks
ENV TENSORFLOW_LOGDIR tensorflow_logdir

ENTRYPOINT ["/docker-entrypoint.sh"]
