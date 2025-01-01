FROM python:3.9
ENV PYTHONUNBUFFERED 1
RUN mkdir /code

WORKDIR /code
COPY requirements.txt /code/requirements.txt

# install system dependencies

RUN apt-get update \
 && apt-get install --no-install-recommends build-essential -y

RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip3 install -r requirements.txt
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list
RUN apt-get update && ACCEPT_EULA=Y apt-get -y install --no-install-recommends mssql-tools msodbcsql17
RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc

COPY . /code