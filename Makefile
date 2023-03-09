build-dev:
	docker build -t investment-manager-dev -f Dockerfile.dev .

build:
	docker build -t investment-manager -f Dockerfile .

run-dev:
	docker run --name investment-manager-dev --detach investment-manager-dev

run:
	docker run --name investment-manager --detach investment-manager

check:
	docker exec -t investment-manager-dev black --check "/var/task/app"
	docker exec -t investment-manager-dev isort --check "/var/task/app"
	docker exec -t investment-manager-dev flake8 "/var/task/app"
	docker exec -t investment-manager-dev safety check --full-report
	docker exec -t investment-manager-dev bandit -ll -r "/var/task/app"

test:
	docker exec -t investment-manager-dev pytest "/var/task/tests"
