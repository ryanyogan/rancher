#!/bin/bash
NODE_1_DN=node_app1
NODE_2_DN=node_app2
if [ -n "$NODE_APP1_IP" ]
then
  echo "$NODE_APP1_IP $NODE_1_DN" >> /etc/hosts
fi
if [ -n "$NODE_APP2_IP" ]
then
  echo "$NODE_APP2_IP $NODE_2_DN" >> /etc/hosts
fi

/usr/sbin/nginx
