require 'rubygems'
require 'bundler'
Bundler.require


require './app'

require './models/tvshow'

require './controllers/tvshows_controller'

run TvshowsApp
