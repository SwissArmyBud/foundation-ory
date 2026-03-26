#! /bin/bash

source ../../../.env
ORY_DOCKERFILE="../../../docker-compose-ory.yaml"

HYDRA_PUBLIC_ENDPOINT="https://${SERVICE_DOMAIN}${HYDRA_PUBLIC_PATH}/"
echo "Calling endpoint: ${HYDRA_PUBLIC_ENDPOINT}" 

# Get values from 'create-hydra-client.yaml'
HYDRA_CLIENT_ID='<SET ME>'
HYDRA_CLIENT_SECRET='<SET ME>'

docker compose -f ${ORY_DOCKERFILE} exec hydra \
  hydra perform client-credentials \
  --endpoint "${HYDRA_PUBLIC_ENDPOINT}" \
  --client-id "$HYDRA_CLIENT_ID" \
  --client-secret "$HYDRA_CLIENT_SECRET"