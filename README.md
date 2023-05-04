# comp512_project
By Zhenmin Wang

Required 3rd party setup:
1 - Download and install MySQL:
After the database is setup, use dms.sql to setup the database schema, this is only database structure so you need to add mock data for testing

2 - Redis, NGXIN and MinIO:
Download the following zip as well as install redis from this website: https://redis.com/redis-enterprise/redis-insight/
NGINX&MINIO&REDIS.zip
Download MinIO from their official website and put MinIO.exe inside the zip folder
Copy zip onto two different computer and edit the following files for ip-binding:
start_minio_cluster12_nginx_redis_windows.bat
redis.windows.conf
nginx.conf

After successfully starting the 2 servers on each computer, go to your_own_ip:4001 and use minioadmin(both username and password) to login to see if the server is up or not.

In Redis: click add redis database, fill in your host address and fill in the database alias from MySQL and click Add

3 - Download Erlang and RabbitMQ:
Install Erlang then RabbitMQ as RabbitMQ uses Erlang, note: make sure to setup Erlang system variable before installing RabbitMQ
Install RabbitMQ-Plugin with command console, move to RabbitMQ/sbin and excute this line 
rabbitmq-plugins enable rabbitmq_management

After this, go to root folder and start rabbitmq-server.bat to host RabbitMQ server
Once server is up, open this link in the browser to verify if server is up, username and password by default are guest

4 - Download NodeJS(Note: version has to be lower than 17, my version is v16.16.0)

5 - Download dms-frontend and excute yarn, afterwards delete the .umi file in src

To run the program:
Download dms.zip and dms-frontend.zip
unzip both and use the corresponding IDE to open them up
Configure the following file in frontend:
proxy.ts
You need to pair up target with backend 
Configure the following file in backend:
application.yml
You need to change all the 3rd party deployment setting to your own.

Once the above steps are all finished, make sure all the 3rd party environment is running as well as enable redis in your task manager:
1: run the backend code
2: use the following command to run frontend:
yarn run start



