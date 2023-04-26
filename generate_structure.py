import os

# Define el directorio base del proyecto
BASE_DIR = os.path.dirname(os.path.abspath(__file__))

# Crea la estructura de carpetas
folders = ['api', 'database', 'templates', 'static']
for folder in folders:
    os.makedirs(os.path.join(BASE_DIR, folder))

# Crea los archivos necesarios
api_files = ['__init__.py', 'authentication.py', 'doctor.py', 'patient.py', 'appointment.py']
for file in api_files:
    open(os.path.join(BASE_DIR, 'api', file), 'a').close()

open(os.path.join(BASE_DIR, 'database', '__init__.py'), 'a').close()
open(os.path.join(BASE_DIR, 'database', 'connection.py'), 'a').close()
open(os.path.join(BASE_DIR, 'database', 'models.py'), 'a').close()

template_files = ['base.html', 'index.html', 'login.html', 'admin.html', 'patient.html', 'doctor.html']
for file in template_files:
    open(os.path.join(BASE_DIR, 'templates', file), 'a').close()

os.makedirs(os.path.join(BASE_DIR, 'static', 'css'))
os.makedirs(os.path.join(BASE_DIR, 'static', 'js'))
os.makedirs(os.path.join(BASE_DIR, 'static', 'img'))

open(os.path.join(BASE_DIR, 'config.py'), 'a').close()
open(os.path.join(BASE_DIR, 'run.py'), 'a').close()
open(os.path.join(BASE_DIR, 'requirements.txt'), 'a').close()
open(os.path.join(BASE_DIR, 'README.md'), 'a').close()
