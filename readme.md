# Create and activate new virtual environment
# https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/
On macOS and Linux:
- Creating a virtual environment:
python3 -m venv helloWorldDjango

- Activating a virtual environment:
source helloWorldDjango/bin/activate

# Commit and Push Project to git respository 
# https://djangoforbeginners.com/hello-world/
(helloworld) $ python manage.py runserver

(helloworld) $ git init
(helloworld) $ git add -A
(helloworld) $ git commit -m 'initial commit'

(helloworld) $ git remote add origin https://github.com/..../hello-world.git
(helloworld) $ git push -u origin master

# Dockerzize Django Applicaton
# https://dev.to/englishcraig/creating-an-app-with-docker-compose-django-and-create-react-app-31lf

docker build -t hello-world-django .
docker run  -v $PWD:/helloWorldDjango -p 8000:8000 --name hello-world-django hello-world-django:latest

# https://kknews.cc/code/5bm9xml.html
# https://www.howtoforge.com/tutorial/docker-guide-dockerizing-python-django-application/
# https://runnable.com/docker/python/dockerize-your-django-application
# https://wsvincent.com/django-docker-postgresql/
# https://medium.com/@ksarthak4ever/docker-dockerfile-and-django-c959620e869d
# https://www.atjiang.com/docker-compose-and-django-quickstart/
# https://medium.com/@ksarthak4ever/docker-dockerfile-and-django-c959620e869d


# docker-tutorial
# https://github.com/twtrubiks/docker-tutorial


# nginx
# https://ithelp.ithome.com.tw/articles/10188498
# https://blog.techbridge.cc/2018/03/17/docker-build-nginx-tutorial/
# proxy 
# https://www.zhihu.com/question/24723688