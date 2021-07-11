setup:
	python3 -m venv ~/.movierec

install:
    pip install -r requirements.txt

test:
	python -m pytest -vv --cov=moviereclib tests/*.py
	#python -m pytest --nbval notebook.ipynb


lint:
	pylint --disable=R,C moviereclib

all: install lint test