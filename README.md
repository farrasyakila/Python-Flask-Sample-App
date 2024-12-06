# Python - Flask sample app

## Prerequisites
- Install python3, python3-venv, python3-pip
    
    ```
    $ sudo apt-get install python3
    
    $ sudo apt-get install python3-venv
    
    $ sudo apt-get install python3-pip
    ```
    
- Docker

## Deploy in local server

- Clone Repository
- Create Virtual Env
    ```bash
    $ python3 -m venv env

    $ source env/bin/activate
    ```
- Install Dependency
    ```bash
    $ pip install -r requirements.txt
    ```
- Add data dummy
    ```bash
    $ flask forge
    ```
- Run Application
    ```bash
    $ flask run
    ```
Access app in http://127.0.0.1:5000/

## Deploy in Docker
### Build Image 

```bash
$ docker build -t farrasyakila/python-flask-app-sayhello .
```
### Run Container
```bash
$ docker run --name say-hello-app -d -p 5000:5000 farrasyakila/python-flask-app-sayhello
```
Access app in http://127.0.0.1:5000/