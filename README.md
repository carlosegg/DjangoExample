Dependencies
To run this example you need to install django, djangorestframework, django_nose and nose_cov. You can install them using easy_install


Example script to launch the tests in jenkins:

rm -Rf ./target
mkdir -p ../target
python calculator/manage.py test calc
sed -i s:"<packages>":" <sources><source>--source</source><source>$PWD</source></sources><packages>":g ./target/coverage.xml
cp ./target/coverage.xml .
