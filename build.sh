#!/bin/bash

# -- Software Stack Version

SPARK_VERSION="3.0.1"
HADOOP_VERSION="2.7"
JUPYTERLAB_VERSION="2.1.5"

# -- Building the Images

docker build \
  -f Docker/cluster-base/Dockerfile \
  -t cluster-base .

docker build \
  --build-arg spark_version="${SPARK_VERSION}" \
  --build-arg hadoop_version="${HADOOP_VERSION}" \
  -f Docker/spark-base/Dockerfile \
  -t spark-base .

docker build \
  -f Docker/spark-master/Dockerfile \
  -t spark-master .

docker build \
  -f Docker/spark-worker/Dockerfile \
  -t spark-worker .

docker build \
  --build-arg spark_version="${SPARK_VERSION}" \
  --build-arg jupyterlab_version="${JUPYTERLAB_VERSION}" \
  -f Docker/jupyterlab/Dockerfile \
  -t jupyterlab .
