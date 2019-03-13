FROM pytorch/pytorch:1.0.1-cuda10.0-cudnn7-runtime

ENV APP_HOME=/app
WORKDIR ${APP_HOME}

COPY requirements.txt ${APP_HOME}/
RUN pip install -r ${APP_HOME}/requirements.txt
COPY . ${APP_HOME}/
ENTRYPOINT ["jupyter", "notebook", "--allow-root", "--ip=0.0.0.0", "--port=31337"]
