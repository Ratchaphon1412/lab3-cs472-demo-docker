#!/bin/bash

# create migrate database
poetry run python manage.py migrate
# clear all data in database
poetry run python manage.py flush --no-input
# mock playlist
poetry run python manage.py playlist_mock
# run server
poetry run python manage.py runserver 0.0.0.0:8000