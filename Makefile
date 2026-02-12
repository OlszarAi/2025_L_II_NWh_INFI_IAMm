deps:
	.venv/bin/pip install -r requirements.txt; \
	.venv/bin/pip install -r test_requirements.txt

lint:
	.venv/bin/flake8 hello_world test

run:
	.venv/bin/python main.py

.PHONY: test
test:
	PYTHONPATH=. .venv/bin/py.test --verbose -s
