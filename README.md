This repo contains a sample application for a 
node front-end that calls  a Django REST Framework API
and uses a PostgreSQL database.

It was built for a DjangoCon 2019 talk.

## Resources

 - [Slides](https://1drv.ms/p/s!Ak36tGOBftKVv0xETZ7vaaZGEyfh?e=E7r2HY)
 - Video - to be posted when available!
 
## Using the Code

Pre-requisites:
- [Docker community edition](https://docs.docker.com/install/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Docker Extension]()
- [Remote - Containers Extension]()

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


