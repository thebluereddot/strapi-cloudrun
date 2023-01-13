# Strapi Deployment in Google Cloud Run

## Step 1

Run the following command to build a docker container.

```bash
docker build -t gcr.io/[PROJECT_ID]/strapi .
```

In case you are using an M1 MacBook with a non Intel or AMD architecture, you have to add your desired target system when building docker containers.

```bash
docker build --platform linux/amd64 -t gcr.io/[PROJECT_ID]/strapi .
```

## Step 2

Push your freshly created container to Google Container Registry

```bash
docker push gcr.io/[PROJECT_ID]/strapi
```

## Step 3

Create your Cloud Run service and chose the container which you have just uploaded to the registry.