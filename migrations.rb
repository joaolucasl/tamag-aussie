require 'active_record'
require_relative './config/db.rb'


DbConn = DB.Connect()

ActiveRecord::Migration.verbose = true

path = File.expand_path("../migrations/", __FILE__)

puts path

ActiveRecord::Migrator.migrate(path,nil)

