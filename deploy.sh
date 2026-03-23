#!/bin/bash

npm run build && rsync -avz --delete dist/ podlomar@smrtivylet.podlomar.me:/var/www/smrtivylet.podlomar.me/
