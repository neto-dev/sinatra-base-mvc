class PostsController < ApplicationController
  # Ruta Post la clase hereda de application así que ya no tenemos que indicar el path de vistas y public
  get '/posts' do
    @post = "Hola desde posts utilizando el mismo template"
    haml :'index'
  end
end