#!/bin/sh

if [ ! -z "${API_SERVICE_NAME}" ]; then
    sed -i -e "s|%%API_SERVICE_NAME%%|${API_SERVICE_NAME}|g" /etc/nginx/http.d/default.conf 
fi

/docker-entrypoint.sh
