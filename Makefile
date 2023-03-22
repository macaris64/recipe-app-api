d-build:
	docker build .

d-build-linux:
	docker build --network=host .

dc-build:
	docker-compose build

flake8:
	docker-compose run --rm app sh -c "flake8" && docker-compose run --rm app sh -c "python ./helpers/flake8_autofix.py"

test:
	docker-compose run --rm app sh -c "python manage.py test"

run:
	docker-compose up

kill:
	docker-compose down

migrations:
	docker-compose run --rm app sh -c "python manage.py makemigrations"

makemigrations:
	docker-compose run --rm app sh -c "python manage.py makemigrations"

migrate:
	docker-compose run --rm app sh -c "python manage.py wait_for_db && python manage.py migrate"
