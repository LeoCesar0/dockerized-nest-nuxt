aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 361060421389.dkr.ecr.us-east-1.amazonaws.com
docker build -t leo-cesar/docker-study-backend -f Dockerfile .
docker tag leo-cesar/docker-study-backend:latest 361060421389.dkr.ecr.us-east-1.amazonaws.com/leo-cesar/docker-study-backend:latest
docker push 361060421389.dkr.ecr.us-east-1.amazonaws.com/leo-cesar/docker-study-backend:latest