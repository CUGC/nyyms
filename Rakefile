#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Nyyms::Application.load_tasks

desc "Deploy code to MediaTemple (ve) server"
task :deploy do
  system 'ssh root@ve.cq6pq2r5.vesrv.com "cd /var/www/nyyms; git pull origin master; bundle install; touch tmp/restart.txt"'
end
