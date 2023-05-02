require 'sinatra/base'

class Application < Sinatra::Base
    # GET /
    # Root path (homepage, index page)
    get '/' do

        return 'Hello!'
    end

    get '/posts' do
        # params hash automatically defined by sinatra for us and filled with the paramaters 
        # from the incoming requests
        name = params[:name]
        cohort_name = params[:cohort_name]

        p name
        p cohort_name

        return "Hello #{name}, you are in the cohort #{cohort_name}"
    end

    get '/hello' do

        name = params[:name]
        return "Hello #{name}"
    end

    post '/posts' do
        title = params[:title]

        return "Post was created with title: #{title}"
    end
end

# Incoming request: GET /todos/1 # sinatra will look through the different options below 
                                 #to see which one to run

# Routes 

# GET /     -> execute some code

# GET /todos/1 -> execute some different piece of code

# POST /todos  -> execute some different code