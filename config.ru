require 'rubygems'
require 'bundler'
require 'shotgun'
Bundler.require

require './app'
require './models/wine'
require './models/vineyard'

run WineList
