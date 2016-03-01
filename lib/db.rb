
require 'sequel'

require 'jdbc/postgres'
#Jdbc::Postgres.load_driver


DB = Sequel.connect('jdbc:postgresql://localhost/recon')
DB.extension(:connection_validator)
DB.pool.connection_validation_timeout = -1

