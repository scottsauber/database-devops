# database-devops

Example repo for my Database DevOps talk, illustrating Flyway with GitHub Actions.

## Running Locally

1. Install Docker
1. In the root run `docker compose up -d` or `docker-compose up` if on a later version of Docker (notice the `-`)
1. Tear down the containers with `docker compose down` or `docker compose down -v` to remove the volumes

## Making SQL changes

1. Versioned SQL migrations go under /sql/versioned while Repeatable SQL mirations go under /sql/repeatable
1. Test locally with `docker compose up`
1. Send PR to kick off PR Verify
