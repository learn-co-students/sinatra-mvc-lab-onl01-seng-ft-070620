require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        phrase = params[:user_phrase]
        phrase_inst = PigLatinizer.new
        @pig_phrase = phrase_inst.piglatinize(phrase)

        erb :results
    end



end