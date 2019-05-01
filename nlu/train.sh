#!/bin/sh
# docker run \
#     -v $(pwd):/app/project \
#     -v $(pwd)/models:/app/model \
#     rasa/rasa_nlu:0.14.4-full \
#     run \
#         rasa train nlu \
#             --config /app/project/nlu/config.yml \
#             --nlu /app/project/data/nlu.md \
#             --out /app/model

docker run \
    -v $(pwd):/app/project \
    -v $(pwd)/models:/app/models \
    rasa/rasa_nlu:0.14.4-full \
    run \
        python -m rasa_nlu.train \
            -c /app/project/config.yml \
            -d /app/project/data/nlu.md \
            -o /app/models \
            --project led \
            --fixed_model_name model \
            --debug
