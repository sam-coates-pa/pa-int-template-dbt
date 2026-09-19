install:
	pip install -r requirements.txt

deps:
	dbt deps

run:
	dbt run

build:
	dbt build

test:
	dbt test

snapshot:
	dbt snapshot

docs:
	dbt docs generate

lint:
	sqlfluff lint models

fix:
	sqlfluff fix models
