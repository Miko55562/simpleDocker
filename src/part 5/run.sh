#!/bin/bash

gcc -o /home/server /home/server.c -lfcgi
spawn-fcgi -p 8080 ./home/server
nginx -g "daemon off;"
nginx -s reload