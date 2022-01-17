up:
	docker-compose -f ./compose.yml -p tpgenie up $(args)

migrate_db: up
	docker exec -i tpgenie_db mysql -uroot -p1234 ecommerce < ./sql-data/schema.sql
