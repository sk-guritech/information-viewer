#!/bin/bash
cd $(cd $(dirname $0) && pwd)

cd ../requirements
pip-compile app_requirements.in
pip-compile dev_requirements.in

cp app_requirements.txt ../server_settings/app/requirements.txt