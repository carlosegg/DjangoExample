#!/bin/bash -x
mkdir -p target/site/cobertura
mkdir -p target/surefire-reports
python calculator/manage.py test calc
