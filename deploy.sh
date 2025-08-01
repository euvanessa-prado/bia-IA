./build.sh
aws ecs update-service --cluster bia-ia --service service-bia-ia  --force-new-deployment
