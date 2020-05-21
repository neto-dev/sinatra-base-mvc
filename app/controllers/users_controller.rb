class UsersController < ApplicationController
  # Ruta Post la clase hereda de application así que ya no tenemos que indicar el path de vistas y public
  get '/users' do
    @user = User.first
    haml :'index'
  end
end