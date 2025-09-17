
/imagen base
FROM python:3.7.11-slim

/Carpeta donde se trabajará dentro del contenedor.
WORKDIR  /python-api

/se copian archivos de tu máquina al contenedor
COPY requirements.txt requirements.txt

/se ejecutan los comandos al construir la imagen
RUN pip install -r requirements.txt


COPY . .

/Comando que se ejecuta al iniciar el contenedor. 
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]



  git config --global user.email "nataliaflorezz7282@gmail.com"
  git config --global user.name "Nataliafg7"
