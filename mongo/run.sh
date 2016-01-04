#!/bin/bash
/usr/bin/mongod &
sleep 3
mongoimport --db countdb --collection hits --type json --file /tmp/init.json
/usr/bin/mongod --shutdown
sleep 3
/usr/bin/mongod
