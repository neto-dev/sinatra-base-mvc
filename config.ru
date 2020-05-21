require_relative './config/environment'

use UsersController

map "/" do
  run ApplicationController
end