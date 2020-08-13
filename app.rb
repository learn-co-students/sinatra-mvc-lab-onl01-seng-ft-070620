require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input 
    end 

    post '/piglatinize' do 
        @new = PigLatinizer.new
        # @new.text = params[:user_phrase]

        erb :results
    end

end