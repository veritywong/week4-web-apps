require 'sinatra/base'

class Application < Sinatra::Base
    get '/hello' do
    end
        
end

# Incoming request: GET /todos/1 # sinatra will look through the different options below 
                                 #to see which one to run

# Routes 

# GET /     -> execute some code

# GET /todos/1 -> execute some different piece of code

# POST /todos  -> execute some different code