wget -O django_werewolf_example_app.tar.gz https://github.com/barseghyanartur/django-werewolf/archive/stable.tar.gz
mkdir django_werewolf_example_app/
tar -xvf django_werewolf_example_app.tar.gz -C django_werewolf_example_app
cd django_werewolf_example_app/django-werewolf-stable/example/example/
pip install Django
pip install -r ../requirements.txt
pip install -e git+https://github.com/barseghyanartur/django-werewolf@stable#egg=django-werewolf
mkdir ../media/
mkdir ../media/static/
mkdir ../static/
mkdir ../db/
cp local_settings.example local_settings.py
./manage.py syncdb --noinput --traceback -v 3
./manage.py collectstatic --noinput --traceback -v 3
./manage.py news_create_groups_and_test_users --traceback -v 3
./manage.py runserver 0.0.0.0:8001 --traceback -v 3