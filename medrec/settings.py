import os

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MEDIA_ROOT = os.path.join(BASE_DIR, 'media/')
MEDIA_URL = "/media/"

ADMIN_SITE_HEADER = "Medical Records Administration"

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'nf^(#gts_4-vfd74(3i-hv8qcnq&cv-9ozi-l+&j@oeb4)z3k%'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['192.168.0.121', '192.168.0.119', '127.0.0.1', 'localhost']

# Application definition

INSTALLED_APPS = [
    'patient',
    'visit',
    'doctor',
    'suit',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    ]
MIDDLEWARE += ('crum.CurrentRequestUserMiddleware',)

ROOT_URLCONF = 'medrec.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'django.template.context_processors.static',
                'django.template.context_processors.media',
            ],
           
        },
    },
]

WSGI_APPLICATION = 'medrec.wsgi.application'

# Database
# https://docs.djangoproject.com/en/2.0/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'medrec',
        'USER':  'root',
        'PASSWORD': 'CasC#373',
        'HOST':  'localhost',
        'PORT': '3306',
       }
}

SUIT_CONFIG = {
	'ADMIN_NAME' : 'MEDREC Administration',
	'SHOW_REQUIRED_ASTERISK' : True,
	'MENU_EXCLUDE' : ('auth.group', 'auth'),
	'HEADER_TIME_FORMAT' : 'h:i',
	'MENU_OPEN_FIRST_CHILD': False,
}		

# Password validation
# https://docs.djangoproject.com/en/2.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

# Internationalization
# https://docs.djangoproject.com/en/2.0/topics/i18n/

LANGUAGE_CODE = 'en-ph'

TIME_ZONE = 'Asia/Manila'

USE_I18N = True

USE_L10N = True

USE_TZ = False

STATIC_URL = '/static/'

STATIC_ROOT = os.path.join(BASE_DIR, '/static/')

#STATICFILES_DIRS = [os.path.join(BASE_DIR, "static"), '192.168.0.119/static/',]
