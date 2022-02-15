FROM ubuntu:20.04
 
# Стандартный апдейт репозитория
RUN apt-get -y update

# Установка Nginx
RUN apt-get install -y nginx
 
# Указываем Nginx запускаться на переднем плане (daemon off)
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Запускаем Nginx. CMD указывает, какую команду необходимо запустить, когда контейнер запущен.
CMD [ "nginx" ]