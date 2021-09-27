FROM python:3.9.0

WORKDIR /home/

RUN echo "dkanrjsk1"

RUN git clone https://github.com/TTioTTi/gis_1ban_1.git

WORKDIR /home/gis_1ban_1/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=djangoProject001.settings.deploy && python manage.py migrate --settings=djangoProject001.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=djangoProject001.settings.deploy djangoProject001.wsgi --bind 0.0.0.0:8000"]
