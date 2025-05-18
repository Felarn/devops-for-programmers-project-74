install:
	docker run -it -w /root -v `pwd`/app:/root node:20.12.2 make setup

dev-start:
	docker compose up

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit

stop-all:
	docker ps -aq | xargs docker stop
	docker ps

erase-all-images:
	docker images -aq | xargs docker rmi -f
	docker images

run-from-image:
	docker start test-run || docker run -d -e NODE_ENV=development -p 8080:8080 --name test-run felarn/devops-for-programmers-project-74 make dev

halt-test-run:
	docker stop test-run

logs:
	docker compose logs -f

build-image:
	docker-compose -f docker-compose.yml build app

push-image-to-docker-hub:
	docker-compose -f docker-compose.yml push app