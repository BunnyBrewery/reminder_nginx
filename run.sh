#!/bin/bash

docker run --name reminder-nginx -d -p 80:8080 -p 443:8443 custom-nginx