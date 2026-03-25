# Foundation-Ory

Foundation-Ory (_foundationally_) is meant to provide a foundationally complete solution for basing a production Ory deployment on. Skips over several of the most common pitfalls when setting up an Ory system and provides a modularized approach via Docker Compose and a shared environment file.

## Ory Services

- **Kratos**: State-free session management

## Project Modules

- **Ory**: `docker-compose-ory.yaml` is responsible for managing the core Ory stack members
- **Network**: `docker-compose-net.yaml` sets up a Traefik load balancer to manage the public-facing networking challenges. Handles route assignments, TLS certificates, middleware execution, and Foundation-Ory ships it configured as a strong baseline of network-level security
- **Data**: `docker-compose-pg.yaml` creates a Postgres database (persisted to `/pg`) service for internal services, and then automatically attaches Ory auto-migrators to ensure the cluster is always service-ready for the attached Ory stack members.
- **Addons**: `docker-compose-addons.yaml` contains a series of addons to simplify deployment or development of the Ory stack. It ships with:
  - [kratos-selfservice-ui-node](https://github.com/ory/kratos-selfservice-ui-node) for Kratos session flow validation
  - [mailslurper](https://github.com/mailslurper/mailslurper) as an SMTP mock for validating flows requiring emails