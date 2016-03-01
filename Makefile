
RUBY=jruby --dev -G


db:
	postgres -d 2 -D /usr/local/var/postgres

migrate:
	$(RUBY) -Ilib lib/migrator.rb $(TO) $(FROM)
m: migrate

serve:
	$(RUBY) -S rackup -p 9080 -s puma
s: serve

