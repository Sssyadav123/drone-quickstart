#!/usr/bin/env bash
export DRONE_GITHUB_CLIENT_ID=8489e47498ede695dbd1
export DRONE_GITHUB_CLIENT_SECRET=a5fcee7c777a174c25aaa80bf13b894b739a9fb8
export DRONE_GITHUB_ADMIN=Sssyadav123
export DRONE_SERVER_HOST=5b6d-13-235-36-143.in.ngrok.io

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker-compose up -d

