.PHONY: run
run:
	uv run app.py

.PHONY: format
format:
	uv run ruff check --select I --fix
	uv run ruff format

.PHONY: fmt
fmt: format

.PHONY: lint
lint:
	uv run ruff check

.PHONY: check
check:
	uv run mypy main.py

