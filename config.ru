require 'rubygems'
require 'bundler'
require 'shotgun'
Bundler.require

require 'active_record'

require './app'
require './models/wine'

run WineList
