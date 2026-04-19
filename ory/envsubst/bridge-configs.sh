#! /bin/bash

echo "CONFIG BRIDGE STARTING..."

echo "WORKING ON KRATOS..."
envsubst < /opt/envsubst/kratos/kratos-template.yml > /opt/envsubst/kratos/kratos.yml
echo "WORKING ON HYDRA..."
envsubst < /opt/envsubst/hydra/hydra-template.yml > /opt/envsubst/hydra/hydra.yml
echo "WORKING ON KETO..."
envsubst < /opt/envsubst/keto/keto-template.yml > /opt/envsubst/keto/keto.yml

echo "DONE."