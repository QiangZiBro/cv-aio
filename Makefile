pull:
	docker pull qiangzibro/cv-aio:latest

up:
	docker-compose up -d

down:
	docker-compose down

in:
	docker-compose exec cv-aio-env bash
