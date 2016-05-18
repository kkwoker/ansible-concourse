#!/bin/bash

/opt/concourse/concourse_linux_amd64 web --session-signing-key /opt/concourse/session_signing_key \
                            --tsa-host-key /opt/concourse/host_key \
                            --tsa-authorized-keys /opt/concourse/authorized_worker_keys \
                            --postgres-data-source {{ concourse_postgres_data_source }} \
                            --external-url {{ concourse_external_url }} \
                            --github-auth-client-id {{ concourse_github_auth_client_id }} \
                            --github-auth-client-secret {{ concourse_github_auth_client_secret }} \
                            --github-auth-organization {{ concourse_github_auth_organization }}
