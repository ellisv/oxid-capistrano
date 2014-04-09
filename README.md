# Capistrano::OXID

OXID eShop specific tasks for Capistrano v3

  - `cap oxid:clear_cache`
  - `cap oxid:command[command_name]`
  - `cap oxid:fix_states`
  - `cap oxid:migrate`
  - `cap oxid:update_views`

To use this you must have [OXID Console][1] in your OXID eShop application

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano', '~> 3.0.0'
    gem 'oxid-capistrano'

## Usage

Require oxid-capistrano in your Capfile:

    # Capfile
    require 'capistrano/oxid'

### Configuration

```ruby
# App path where OXID application is stored
# Must have trailing "/" if specified
set :app_path, '' # Path to OXID from where Capfile is stored, leave empty if it is in the same directory

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
```

[1]: https://github.com/EllisV/oxid-console
