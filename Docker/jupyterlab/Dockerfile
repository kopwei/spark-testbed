FROM kopkop/spark-test-cluster-base

# -- Layer: JupyterLab

ARG spark_version=3.0.1
ARG jupyterlab_version=2.1.5

RUN apt-get update -y && \
    apt-get install -y python3-pip libffi-dev && \
    pip3 install pyspark==${spark_version} jupyterlab==${jupyterlab_version}

ADD jupyter_notebook_config.py /root/.jupyter/
ADD gen_password.py /root/
ADD start-jupyterlab.sh /root/
# -- Runtime

EXPOSE 8888
WORKDIR ${SHARED_WORKSPACE}
ENTRYPOINT [ "bash", "/root/start-jupterlab.sh" ]
