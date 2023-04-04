export DRONE_GITHUB_CLIENT_ID=eebdf1c0442e00ec11ba
export DRONE_GITHUB_CLIENT_SECRET=b1b41eb8bf7cc60f4633240f53e9a52d1f8a2fd3
export DRONE_GITHUB_ADMIN=mahimtalukder
export DRONE_SERVER_HOST=9e02-103-60-175-142.in.ngrok.io

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker-compose up -d