#!/usr/bin/env rake

# Using Sequel migrations by the moment
require 'sequel'

task :app do
  database = "testapp_development"
  user     = 'juanmacervera'
  DB = Sequel.connect(adapter: "postgres", database: database, host: "127.0.0.1", user: user)
end

Dir[File.dirname(__FILE__) + "/lib/tasks/*.rb"].sort.each do |path|
  require path
end

# require 'rom/sql/rake_task'
#
# namespace :db do
#   task :setup do
#
#   end
# end
