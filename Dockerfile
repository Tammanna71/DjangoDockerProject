#setting up base image
FROM python:3.13

#setting environment variables
ENV PYTHONDONTWRITEBYTECODE = 1

#setting up working directory
WORKDIR /app

#copy files
COPY requirements.txt .

#installing dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

#copy project files
COPY . .

#running app at port
EXPOSE 8000

#running the server
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
