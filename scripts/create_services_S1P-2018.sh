cf cs cleardb spark fortunes-db
cf cs p-config-server trial config-service -c '{ "git": { "uri": "https://github.com/S1PDemo/config-repo.git","searchPaths": "S1PDemo1" }}' 
cf cs p-service-registry trial service-registry
cf cs p-circuit-breaker-dashboard trial circuit-breaker

