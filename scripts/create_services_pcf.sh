#!/usr/bin/env bash

cf cs p.mysql db-small fortunes-db
cf cs p-config-server standard config-service -c '{ "git": { "uri": "https://github.com/pberman-pivotal/fortune-teller-demo-config-repo.git" }}' 
cf cs p-service-registry standard service-registry
cf cs p-circuit-breaker-dashboard standard circuit-breaker
