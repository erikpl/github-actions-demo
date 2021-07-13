install:
	pip3 install --upgrade pip &&\
		pip3 install -r requirements.txt

install-gcp:
	pip3 install --upgrade pip &&\
		pip3 install -r requirements-gcp.txt

install-aws:
	pip3 install --upgrade pip &&\
		pip3 install -r requirements-aws.txt

install-amazon-linux:
	pip3 install --upgrade pip &&\
		pip3 install -r amazon-linux.txt
lint:
	pylint --disable=R,C hello.py

format:
	black *.py

test:
	python3 -m pytest -vv --cov=hello test_hello.py
