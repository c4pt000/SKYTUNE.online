echo "repopulating the database from initial all database changes will be purged and set anew"


sudo -u postgres bash -c "psql -c \"CREATE USER skytune WITH PASSWORD '';\""
rails db:drop:all
rails db:create
rails db:migrate
rails db:seed

