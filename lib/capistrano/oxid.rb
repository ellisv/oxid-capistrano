require 'capistrano/file-permissions'

namespace :load do
  task :defaults do
    load 'capistrano/oxid/defaults.rb'
  end
end