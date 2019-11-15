# -- Image you are going to inherit
FROM python:3.6

# Set the Python unbuffered environment variable
# Recommended when running Python within Docker containers
# It doesn't allow Python to buffer the outputs. Just prints directly.
# This avoids complications with Docker image when running your Python app.
ENV PYTHONUNBUFFERED 1 

# -- Make a directory inside our image to store our application's source code
RUN mkdir /helloWorldDjango

# -- Switch to this new directory (like cd basically) and set as default
# Any application we run from the Docker container will run from this directory
WORKDIR /helloWorldDjango

# -- Store our dependencies in a requirements.txt file and copy to docker image
ADD config/requirements.txt /helloWorldDjango/
# Add dependencies
RUN pip install -r requirements.txt
# -- Copies from local machine /app folder to the /app folder on our image. 
# This allows us to copy our code we create and copy to our Docker image.
ADD . /helloWorldDjango/

EXPOSE 8000

CMD python3 manage.py runserver 0.0.0.0:8000