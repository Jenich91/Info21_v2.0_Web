start: build up
restart: down up
rebuild: down remove build up
stop: down rmi

down: docker-down
build: docker-build
up: docker-up
remove: rmi

docker-down:
	docker-compose down --remove-orphans

docker-build:
	docker-compose build

docker-up:
	docker-compose up -d

rmi:
	docker images -a | grep "apj4_info21_v20_web_java-1.*" | awk '{print $3}' | xargs docker rmi

