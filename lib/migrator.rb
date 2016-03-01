
require 'lib/db'
require 'sequel/extensions/migration'


CURRENT_VERSION = (DB[:schema_info].first[:version] rescue nil)
p DB
p CURRENT_VERSION

to = ARGV[0]
from = ARGV[1] || CURRENT_VERSION


Sequel::Migrator.apply(DB, 'migrations/', to, from)
p DB[:items].all

