# App path where OXID application is stored
# Must have trailing "/" if specified
set :app_path, ''

# Dirs that need to be writable by HTTP server
set :file_permissions_paths, [
  fetch(:app_path) + 'export',
  fetch(:app_path) + 'log',
  fetch(:app_path) + 'tmp',
  fetch(:app_path) + 'out/pictures',
  fetch(:app_path) + 'out/media'
]