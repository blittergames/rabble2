require 'rubygems'
require 'sinatra'
require 'haml'
require 'dm-core'
require 'dm-validations'

# Require /lib/building.rb
require "lib/building"

configure do
  # There's a million things you can do in sinatras configure block, but for now,
  # just set up the DB to save in /db/development.db
  #DataMapper.setup :default, "sqlite3:///#{APP_ROOT}/db/development.db"
  DataMapper.setup :default, "sqlite3://db/development.db"	
end
