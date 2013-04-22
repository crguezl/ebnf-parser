# Assumes that directory ./node_modules/ 
# contains the modules from which it depends
# npm install lex-parser
# npm install test

all: install build test

install:
	npm install

build:
	NODE_PATH=. node ./node_modules/.bin/jison bnf.y bnf.l
	mv bnf.js parser.js

test:
	NODE_PATH=. node tests/all-tests.js
