docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID sunilkumar06/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID sunilkumar06/$JOB_NAME:latest

docker push sunilkumar06/$JOB_NAME:$BUILD_ID

docker push sunilkumar06/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID sunilkumar06/$JOB_NAME:$BUILD_ID sunilkumar06/$JOB_NAME:latest
