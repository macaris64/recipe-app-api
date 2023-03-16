d-build:
	docker build .

d-build-linux:
	docker build --network=host .

dc-build:
	docker-compose build

flake8:
	docker-compose run --rm app sh -c "flake8"

test:
	docker-compose run --rm app sh -c "python manage.py test"

run:
	docker-compose up
