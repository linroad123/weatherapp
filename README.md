# Weatherapp

## prerequiste
Install docker and terraform.

## Docker

### usage
The dockerfiles are in both frontend and backend directories. If you wish to build it seperately, you could follow the command:
```bash
docker build -t weatherapp_backend . 
docker run --rm -i -p 9000:9000 --name weatherapp_backend -t weatherapp_backend
```

There is the docker-compose.yml file in root directory to build and spin up the two containers. running a one-liner docker-compose up --build is definitely easier than jumping into different folders and then run npm start.
For developers who deploy the environment for the first time, run the following command:
```bash
docker-compose up --build
```

If the images already exist in your local environment, you could follow the command:
```bash
docker-compose up -d
```
Mounting volumes enables you to map local source code to the corresponding code in the container, so that every time you edit these code files in your local IDE the changes will be instantly reflected in the container.

## Terraform
This tool is used for making the deployment more easier. 
There is a main.tf configuration file to help you set up the docker containers automatically.
All you need to do is run the following commands:
```bash
terraform init
terraform plan
terraform apply
```