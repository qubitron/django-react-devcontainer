This repo contains a sample application for a 
node front-end that calls  a Django REST Framework API
and uses a PostgreSQL database.

It was built for a DjangoCon 2019 talk.

## Resources

 - Slides: [View in Browser](https://1drv.ms/p/s!Ak36tGOBftKVv0xETZ7vaaZGEyfh?e=E7r2HY), [Download](https://github.com/qubitron/django-react-devcontainer/raw/4_production/DjangoCon2019-Django_React_DevContainer.pptx)
 - Video - [Video](https://www.youtube.com/watch?v=hwHRI59iGlw)
 
## Using the Code

Pre-requisites:
- [Docker community edition](https://docs.docker.com/install/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Docker Extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [Remote - Containers Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

Clone the repo and open the workspace:
```
git clone https://github.com/qubitron/django-react-devcontainer
cd django-react-devcontainer
code .
```

Click the "Reopen in Container" button on the popup that appears, after it loads VS Code is running in the container!

To build the front-end, open a new terminal using ``` Ctrl-Shift-`  ``` and run:
```
cd frontend
npm install
npm start
```

To run the Django back-end open a new terminal using ``` Ctrl-Shift-`  ``` and run:
```
python manage.py migrate
python manage.py createsuperuser
python manage.py runserver 0.0.0.0:8000
```

## Learn More

You may be interested to check out some of the additional links for more information:
 - [Developing inside a container on a remote docker host](https://code.visualstudio.com/docs/remote/containers-advanced#_developing-inside-a-container-on-a-remote-docker-host)
 - [Django Webpack Loader](https://github.com/owais/django-webpack-loader), for another way to serve up webpack from Django
 - [Django Docker tutorial from Lincoln Loop](http://github.com/yml/docker_django_tutorial), with some advanced & useful features
 - [Deploying Containers to Azure App Service with VS Code](https://docs.microsoft.com/en-us/azure/python/tutorial-deploy-containers-01)
 - [Create a PostgreSQL database in Azure](https://docs.microsoft.com/en-us/azure/postgresql/quickstart-create-server-database-portal)
