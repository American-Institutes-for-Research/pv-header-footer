FROM python:3
RUN apt-get update
RUN apt-get install -y mysql-client zip
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs rsync
RUN groupadd -g 1001 pvupdaters
RUN adduser --system --uid 997 jenkins
RUN usermod -a -G 1001 jenkins
# Set the working directory to /app

WORKDIR /code/

COPY requirements.txt /code
RUN pip install -r requirements.txt
# Define environment variable

# Run app.py when the container launches

WORKDIR /app
ENTRYPOINT  ["/code/run.sh"]

