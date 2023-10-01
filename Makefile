install:
	pip install --upgrade pip &&\
    	pip install -r requirements.txt

test:
	python -m pytest -v app.py &&\
		pytest --cov

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

all: install lint test format