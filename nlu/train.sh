#!/bin/sh
docker run \
    -v $(pwd):/app/project \
    -v $(pwd)/models:/app/model \
    rasa/rasa_nlu:latest \
    run \
        rasa train nlu \
            --config /app/project/nlu/config.yml \
            --nlu /app/project/data/nlu.md \
            --out /app/model
