# App path where OXID application is stored
# Must have trailing "/" if specified
set :app_path, ''

# Files which are environment independent
# On release path those files will be symlinked to shared folder
set :linked_files, [
  fetch(:app_path) + '.htaccess',
  fetch(:app_path) + 'config.inc.php'
]

# Directories which are environment independent
# On release path those directories will be symlinked to shared folder
set :linked_dirs, [
  fetch(:app_path) + 'log',
  fetch(:app_path) + 'tmp',
  fetch(:app_path) + 'cache',
  fetch(:app_path) + 'export',
  fetch(:app_path) + 'out/downloads',
  fetch(:app_path) + 'out/media',
  fetch(:app_path) + 'out/pictures'
]