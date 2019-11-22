LOG_DIR='docker_build'
LOG_FILE='build_logs.log'

mkdir -p $LOG_DIR
docker build . 2>&1 | tee "$LOG_DIR/$LOG_FILE"

IMAGE_ID=`grep 'Successfully built' $LOG_DIR/$LOG_FILE | tail -1 | cut -d " " -f 3`
echo $IMAGE_ID

docker create --name api -it -p 80:8000 --mount src="$(pwd)/src",target=/usr/api/src,type=bind $IMAGE_ID
docker start api