require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

  get '/' do 
    erb :root  
  end 

  get '/new' do
    erb :"pirates/new" 
  end 

  post '/pirates' do 
#binding.pry
    params[:pirate][:ships].each do |details|
      Ship.new(details)
    end 
    @pirate = Pirate.new(params[:pirate])
    @ships = Ship.all 
    erb :"pirates/show"  
  end 

  end
end
