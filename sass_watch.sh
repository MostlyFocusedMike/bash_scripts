#!/bin/bash

#shorter sass watch script 
# set alias as    sw [directory name]
cd ~/Desktop/$1
sass --watch scss/main.scss:css/styles.css
