require 'bundler/setup'

# Configuración del Enviroment
APP_ENV = ENV["RACK_ENV"] || "development"

Bundler.require :default, APP_ENV.to_sym

# Llamamos a las gemas que implementaremos en el proyecto
require 'rubygems'
require 'bundler'
require 'tilt/haml'

require_rel '../app'