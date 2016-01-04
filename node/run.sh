#!/bin/bash
if [ -n "$MONGO_IP" ]
then
  echo "$MONGO_IP $MONGO_DN" >> /etc/hosts
fi

# Fetch the application
git clone https://github.com/galal-hussein/hitcntr-nodejs.git
mv hitcntr-nodejs/* .
rm -rf hitcntr-nodejs

node index.js
