.PHONY: all data validate eda analysis clean coverage test

all:
	cd data && make data
	cd data && make validate
	cd ..
	cd code/utils && python eda.py
	cd code/utils && python Analysis.py
	cd paper && make all

data:
	cd data && make data 

validate:
	cd data && make validate 

eda:
	cd code/utils && python eda.py

analysis:
	cd code/utils && python Analysis.py

clean:
	find . -name "*.so" -o -name "*.pyc" -o -name "*.pyx.md5" | xargs rm -f

coverage:
	nosetests code/utils data --with-coverage --cover-package=data  --cover-package=utils

test:
	nosetests data/tests

verbose:
	nosetests -v code/utils data
