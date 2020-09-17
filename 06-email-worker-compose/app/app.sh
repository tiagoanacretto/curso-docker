#!/bin/bash

pip install bottle==0.12.13
pip install --no-binary :all: psycopg2==2.7.1
python -u sender.py