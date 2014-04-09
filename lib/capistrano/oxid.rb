require 'capistrano/file-permissions'
require 'capistrano/oxid/console'
require 'capistrano/oxid/oxid'

namespace :load do
  task :defaults do
    load 'capistrano/oxid/defaults.rb'
  end
end