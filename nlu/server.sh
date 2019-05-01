#!/bin/sh
docker run \
    -p 5555:5000 \
    -v $(pwd)/model:/app/projects \
    rasa/rasa_nlu:0.14.4-full  \
    start \
        --path /app/projects
        --port 5000
