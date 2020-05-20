class ApplicationController < Sinatra::Base

  # Configuramos los pats de views & public
  configure do
    set :views, "app/views"
    set :public_dir, "public"
  end

  # Consultamos nuestro modelo y lo enviamos a la vista
  get '/' do
    @post = Post.hello_world
    haml :'index'
  end

end