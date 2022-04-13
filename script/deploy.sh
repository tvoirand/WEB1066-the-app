#!/user/bin/env bash
set -e
echo ${DOCKER_PASSWORD} | docker login --username ${DOCKER_LOGIN} --password-stdin
docker tag zutherb/monolithic-shop:latest ${DOCKER_LOGIN}/ci_course_assignment:latest
docker push ${DOCKER_LOGIN}/ci_course_assignment:latest
set +e