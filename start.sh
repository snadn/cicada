#!bash

export PORT=8360

nginx -g 'daemon off;' & npm start
