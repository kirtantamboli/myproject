docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID kirtantamboli/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID kirtantamboli/$JOB_NAME:latest

docker push kirtantamboli/$JOB_NAME:$BUILD_ID

docker push kirtantamboli/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID kirtantamboli/$JOB_NAME:$BUILD_ID kirtantamboli/$JOB_NAME:latest
