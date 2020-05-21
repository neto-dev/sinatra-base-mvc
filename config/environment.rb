require 'bundler/setup'

# Configuración del Enviroment
APP_ENV = ENV["RACK_ENV"] || "development"

Bundler.require :default, APP_ENV.to_sym

# Llamamos a las gemas que implementaremos en el proyecto
require 'rubygems'
require 'bundler'
require 'tilt/haml'

require 'active_record'
require 'yaml'
require 'json'

# Configure ActiveRecord

env    = ENV['ENV'] || 'development'
root   = File.expand_path '..', __FILE__
config = YAML.load(File.read(File.join(root, './database.yml')))

ActiveRecord::Base.configurations = config
ActiveRecord::Base.establish_connection env.to_sym

require_rel '../app'