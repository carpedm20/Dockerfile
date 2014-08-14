FROM dockerfile/ubuntu
MAINTAINER Taehoon Kim(carpedm20@gmail.com)
 
# Run upgrades
RUN apt-get update
 
# Install basic packages
RUN apt-get -qq -y install git curl build-essential openssl libssl-dev python-software-properties g++ make 
 
# Install Python
RUN apt-get -qq -y install python
RUN apt-get -qq -y install python-pip
RUN apt-get -qq -y install python-virtualenv
RUN apt-get -qq -y install ipython

# Install essential libraries
RUN pip install -q mechanize
RUN pip install -q simplejson
RUN pip install -q django
RUN pip install -q requests
RUN pip install -q beautifulsoup4
