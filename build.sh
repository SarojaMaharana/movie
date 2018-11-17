#!/bin/bash

cd SSOAuthApi
source ./env-variable.sh
mvn clean install package
docker build -t user-auth-app
cd ..
cd ServerApi
source ./env-variable.sh
mvn clean install package
docker build -t movie-app

cd ..

cd FrontendApi
ng build
cd ..
