#! /bin/bash

# Allow the user to update post-logout-redirects on existing clients
export CLIENT_ID='<SET ME>'
export HYDRA_URL='<SET ME>'

curl -X PATCH "https://${HYDRA_URL}/admin/clients/${CLIENT_ID}" \
     -H "Content-Type: application/json" \
     -d @ClientLogoutUriPayload.json