FROM python:3.7-slim

LABEL author="Dmytro"
LABEL version=1.0

# оновлюємо систему
RUN apt-get update && apt-get upgrade -y

# Встановлюємо потрібні пакети
RUN apt-get install git -y && pip install pipenv

# Створюємо робочу папку
WORKDIR /lab

# Завантажуємо файли з Git
RUN git clone https://github.com/dmytro32/lab3.git
# Створюємо остаточну робочу папку з Веб-сайтом та копіюємо туди файли
WORKDIR /app
RUN cp -r /lab/dmyrto/lab3/* .

# Інсталюємо всі залежності
RUN pipenv3 install

# Відкриваємо порт 8000 на зовні
EXPOSE 8000

# Це команда яка виконається при створенні контейнера
ENTRYPOINT ["pipenv3", "run", "python3", "manage.py", "runserver", "0.0.0.0:8000"]
