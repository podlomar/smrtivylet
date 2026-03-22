#!/bin/bash

npm run build && scp -r dist/* podlomar@smrtivylet.podlomar.me:/var/www/smrtivylet.podlomar.me
