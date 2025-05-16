test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dev-start:
	docker compose up

prod-start:
	docker compose -f docker-compose.yml up --abort-on-container-exit app 

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit
