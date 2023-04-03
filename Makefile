git:
	git add .
	git commit -m "$t" -m "$b"
	git push -u origin main

install:
		pip install --upgrade pip &&\
			pip install -r requirements.txt
lint:
	pylint --disable=R,C add.py
test:
	python -m pytest -vv -cov=add test_add.py