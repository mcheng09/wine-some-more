require 'rubygems'
require 'bundler'
require 'shotgun'
Bundler.require

require 'active_record'

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')


require './app'
require './models/wine'

run WineList
