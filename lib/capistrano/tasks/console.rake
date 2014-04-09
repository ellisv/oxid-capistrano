namespace :oxid do
  desc 'Execute a provided console command'
  task :command, :command_name do |t, args|
    # ask only runs if argument is not provided
    ask(:cmd, 'list')
    command = args[:command_name] || fetch(:cmd)

    on roles :app do
      within release_path do
        execute :php, fetch(:app_path) + 'oxid', command, *args.extras
      end
    end
  end
end

task :oxid => ['oxid:command']