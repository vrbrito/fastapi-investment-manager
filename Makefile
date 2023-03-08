build-dev:
	docker build -t app-name-dev -f Dockerfile.dev .

build:
	docker build -t app-name -f Dockerfile .

run-dev:
	docker run --name app-name-dev --detach app-name-dev

run:
	docker run --name app-name --detach app-name

check:
	docker exec -t app-name-dev black --check "/var/task/app"
	docker exec -t app-name-dev isort --check "/var/task/app"
	docker exec -t app-name-dev flake8 "/var/task/app"
	docker exec -t app-name-dev safety check --full-report
	docker exec -t app-name-dev bandit -ll -r "/var/task/app"

test:
	docker exec -t app-name-dev pytest "/var/task/tests"
