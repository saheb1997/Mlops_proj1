#use an official python 3.10 image from docker
FROM python:3.10-slim-buster

#set the working directory
WORKDIR  /app


#coppy your application code
COPY . /app

#Install the dependency
RUN pip Install -r requirements.txt


#Expose the port FastApi will run on
EXPOSE 5000

#command to run the FastAPI app
CMD [ "python3", "app.py" ]

