#!/usr/bin/env bash

cf cs p-mysql 100mb fortunes-db
cf cs p-config-server standard config-service -c '{ "git": { "uri": "https://github.com/mstine/config-repo" }}' 
cf cs p-service-registry standard service-registry
cf cs p-circuit-breaker-dashboard standard circuit-breaker
