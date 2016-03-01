
require 'sequel'

require 'jdbc/postgres'
#Jdbc::Postgres.load_driver


DB = Sequel.connect('jdbc:postgresql://localhost/recon')

