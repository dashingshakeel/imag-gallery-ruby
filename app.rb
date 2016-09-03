class App < Sinatra::Base
  require 'rubygems'
  get "/" do
    @images= Image.all
    haml :index
  end
  post "/images" do 
    @image=Image.new params[:image]
    @image.save
    redirect "/"
  end
end