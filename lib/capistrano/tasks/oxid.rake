namespace :oxid do
  desc 'Clear cache'
  task :clear_cache do
    on roles :app do
      within release_path do
        execute :php, fetch(:app_path) + 'oxid', 'cache:clear'
      end
    end
  end

  desc 'Fix module states'
  task :fix_states do
    on roles :app do
      within release_path do
        execute :php, fetch(:app_path) + 'oxid', 'fix:states --all --no-debug'
      end
    end
  end

  desc 'Update database views'
  task :update_views do
    on roles :app do
      within release_path do
        execute :php, fetch(:app_path) + 'oxid', 'db:update'
      end
    end
  end

  desc 'Run migration scripts'
  task :migrate do
    on roles :app do
      within release_path do
        execute :php, fetch(:app_path) + 'oxid', 'migrate'
      end
    end

    invoke 'oxid:update_views'
  end

  after 'deploy:updated', 'oxid:fix_states'
  after 'deploy:updated', 'oxid:migrate'
  after 'deploy:updated', 'oxid:update_views'
  after 'deploy:updated', 'oxid:clear_cache'
end