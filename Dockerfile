# using alpine as the base image
FROM alpine:latest

# install python3 and pip3 on alpine
RUN apk update  && apk add python3 py3-pip

WORKDIR /project

COPY requirements.txt /project/

RUN pip3 install -r requirements.txt

COPY . /project/

# expose port 5000
EXPOSE 5000

# start the API
CMD ["python3",  "-m", "api.v1.app"]