FROM python:3

WORKDIR /home/app

#If we add the requirements and install dependencies first, docker can use cache if requirements don't change
ADD requirements.txt /home/app
RUN pip3 install -i http://mirrors.cloud.aliyuncs.com/pypi/simple/ --trusted-host mirrors.cloud.aliyuncs.com --default-timeout=60 --no-cache-dir -r requirements.txt

ADD . /home/app
CMD python server.py

EXPOSE 3000
