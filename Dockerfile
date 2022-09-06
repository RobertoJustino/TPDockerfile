FROM UBUNTU
RUN apt-get update 
RUN apt-get install -y pip \
python:3 \
vim \
git \
virtualenv \
jupyter
WORKDIR /workspace
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["", "jupyter notebook"]