#para extraer una imagen preconstruida cin nginx y python3
FROM tiangolo/uwsgi-nginx-flask:python3.7-alpine3.7


ENV LISTEN_PORT=5000
EXPOSE 5000

# Indica donde esta uwsgi.ini
ENV UWSGI_INI uwsgi.ini



# Establece la caperta donde uwsgi busca la aplicacion
WORKDIR /app_Emma

#Copia el contenido de la aplicacion a la imagen
COPY . /app_Emma

