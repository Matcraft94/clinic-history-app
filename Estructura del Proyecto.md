# Estructura del Proyecto
├── api/                  # Carpeta que contiene los archivos relacionados con las APIs
│   ├── __init__.py      # Archivo que inicializa la aplicación Flask
│   ├── authentication.py # Archivo que contiene las funciones de autenticación de usuario
│   ├── doctor.py        # Archivo que contiene las rutas y funciones relacionadas con los doctores
│   ├── patient.py       # Archivo que contiene las rutas y funciones relacionadas con los pacientes
│   ├── appointment.py   # Archivo que contiene las rutas y funciones relacionadas con las citas
│   └── ...              # Otros archivos necesarios para implementar las APIs

├── database/             # Carpeta que contiene los archivos necesarios para interactuar con la base de datos
│   ├── __init__.py      # Archivo que inicializa la conexión con la base de datos
│   ├── connection.py    # Archivo que define la conexión a la base de datos
│   ├── models.py        # Archivo que define los modelos de datos de la base de datos
│   └── ...              # Otros archivos necesarios para interactuar con la base de datos

├── templates/            # Carpeta que contiene los archivos HTML para renderizar las vistas de la aplicación
│   ├── base.html        # Plantilla base que define la estructura de la página web
│   ├── index.html       # Vista que muestra las opciones de inicio de sesión
│   ├── login.html       # Vista de inicio de sesión para las doctoras
│   ├── admin.html       # Vista para la gestión de la clínica y la base de datos por parte de la doctora administradora
│   ├── patient.html     # Vista que muestra la información de un paciente
│   ├── doctor.html      # Vista que muestra la información de una doctora
│   └── ...              # Otras vistas necesarias para la aplicación

├── static/               # Carpeta que contiene los archivos estáticos de la aplicación
│   ├── css/             # Carpeta que contiene los archivos CSS
│   ├── js/              # Carpeta que contiene los archivos JavaScript
│   ├── img/             # Carpeta que contiene las imágenes utilizadas en la aplicación
│   └── ...              # Otros archivos estáticos necesarios para la aplicación

├── config.py             # Archivo que contiene las variables de configuración de la aplicación
├── run.py                # Archivo que inicia la aplicación
├── requirements.txt      # Archivo que lista las dependencias del proyecto
└── README.md             # Archivo que describe el proyecto y su estructura de carpetas


## Explicación

api/: esta carpeta contendrá todos los archivos relacionados con la implementación de las APIs, que estarán creadas utilizando Flask. Los archivos incluirán las definiciones de rutas, las funciones de controladores y cualquier otro código relacionado con la API. Por ejemplo, los archivos doctor.py, patient.py y appointment.py podrían definir las rutas y funciones relacionadas con las operaciones CRUD de los doctores, pacientes y citas, respectivamente.

database/: esta carpeta contendrá los archivos necesarios para interactuar con la base de datos. El archivo connection.py podría definir la conexión a la base de datos, mientras que models.py podría definir los modelos de datos para las tablas de la base de datos.

templates/: esta carpeta contendrá los archivos HTML que serán utilizados para renderizar las vistas de la aplicación web. Los archivos incluirán una plantilla base (base.html) y vistas específicas para las diferentes funcionalidades de la aplicación web. Por ejemplo, index.html podría ser la vista principal que muestre las opciones de inicio de sesión, mientras que patient.html y doctor.html podrían ser vistas para mostrar la información específica de pacientes y doctores.

static/: esta carpeta contendrá todos los archivos estáticos necesarios para la aplicación web, como archivos CSS, JavaScript e imágenes.

config.py: este archivo podría contener variables de configuración globales para la aplicación, como la URL de la base de datos y la clave secreta de Flask.

run.py: este archivo iniciará el servidor Flask y la aplicación web.

requirements.txt: este archivo listará todas las dependencias necesarias para el proyecto, para poder instalarlas fácilmente con pip.

README.md: este archivo podría contener información general sobre el proyecto, como su propósito y su estructura de carpetas.

Es importante recordar que esta estructura de carpetas es solo una posible implementación y puede variar según las necesidades y objetivos específicos de tu proyecto.
