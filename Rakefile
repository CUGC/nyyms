#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Nyyms::Application.load_tasks

desc "Deploy code to MediaTemple (ve) server"
task :deploy do
  system 'ssh root@ve.cq6pq2r5.vesrv.com "cd /var/www/nyyms; git pull origin master; touch tmp/restart.txt;"'
end

desc "Precompiles assets on remote server."
task :precomp do
  system 'ssh root@ve.cq6pq2r5.vesrv.com "cd /var/www/nyyms; /usr/local/rvm/rubies/ruby-1.9.3-p194/bin/ruby /usr/local/rvm/gems/ruby-1.9.3-p194@global/bin/rake assets:precompile:all RAILS_ENV=production RAILS_GROUPS=assets;"'
end