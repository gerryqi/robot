docker build -t robot .
docker run --env-file .env -p 3000:3000 -it robot
