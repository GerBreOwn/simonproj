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

ALLOWED_HOSTS = ['192.168.1.109','192.168.2.119', '127.0.0.1', 'localhost']

# ~ def show_toolbar(request):
    # ~ return True
# ~ DEBUG_TOOLBAR_CONFIG = {
    # ~ "SHOW_TOOLBAR_CALLBACK" : show_toolbar,
# ~ }

# Application definition
# ~ SUIT = True

INSTALLED_APPS = [
    'doctor',
    'patient',
    'visit',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'debug_toolbar',
    'django_tables2',
    #'django_rest_framework',
    #'django-filters',
#    'suit',
#    'django_counter_field_py3',
#    'proyekt',
#    'suit_dashboard',
]

# ~ if SUIT:
	# ~ INSTALLED_APPS = [
		# ~ 'suit',
		# ~ 'django.contrib.admin.apps.SimpleAdminConfig',
	# ~ ] + INSTALLED_APPS[1:]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'debug_toolbar.middleware.DebugToolbarMiddleware',
   # 'django.contrib.staticfiles',
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

# ~ SUIT_CONFIG = {
	# ~ 'ADMIN_NAME' : 'MEDICAL RECORDS Administration',
	# ~ 'SHOW_REQUIRED_ASTERISK' : True,
	# ~ 'MENU_EXCLUDE' : ('auth.group', 'auth', '-', 'doctor_group','doctor'),
	# ~ 'HEADER_TIME_FORMAT' : 'h:i',
	# ~ 'MENU_OPEN_FIRST_CHILD': True,
	# ~ 'CONFIRM_UNSAVED_CHANGES': True,
	# ~ 'LIST_PER_PAGE': 20,
	# ~ 'label': 'Print Prescription', 'url':'path(admin/patient/)', 'icon': 'icon-user',
	# ~ 'label': 'Payment Report', 'url': 'path(admin/visit/)', 'icon': 'icon-user',
# ~ }

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

STATIC_ROOT = os.path.join(BASE_DIR, 'static')
