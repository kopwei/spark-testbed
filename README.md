# spark-testbed
The testbed for Spark cluster

## Background

This project is trying to build up a Spark test bed on K8s cluster. Reference is [Apache Spark Cluster on Docker](https://towardsdatascience.com/apache-spark-cluster-on-docker-ft-a-juyterlab-interface-418383c95445).

## Components

Here is the list of components in the system.

- Spark Master
- Spark Worker
- JupyterLb

## Development

The project consists of Docker image files and Helm chart to deploy.

### Build Docker images

Developer can use following command to build docker images:

```bash
bash build.sh
```

## Deployment
