#!/usr/bin/env bash
#This creates services on pws for S1P conference demos
#1. uses cleardb
#2. config server points to the S1PDemo config repo.

cf cs cleardb spark fortunes-db
cf cs p-config-server standard config-service -c '{ "git": { "uri": "https://github.com/S1PDemo/config-repo.git" }}' 
cf cs p-service-registry standard service-registry
cf cs p-circuit-breaker-dashboard standard circuit-breaker
