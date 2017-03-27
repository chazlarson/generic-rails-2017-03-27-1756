#!/bin/bash

sh pg-start.sh

echo '--------------'
echo 'bundle install'
bundle install

echo '----------------'
echo 'rails db:migrate'
rails db:migrate

echo '----------'
echo 'rails test'
rails test

