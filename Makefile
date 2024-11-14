# Makefile

pypi:
	rm -rf dist/ build/ rfc9290.egg-info/
	python3 -m build
	python3 -m twine upload dist/*

wheel:
	pip wheel . -w dist

format:
	black rfc9290 --line-length 79

lint:
	cd rfc9290 && pylint rfc9290

