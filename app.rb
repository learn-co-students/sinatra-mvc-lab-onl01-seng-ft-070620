require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        ingstray = PigLatinizer.new
        @pl = ingstray.piglatinize(params[:user_phrase])

        erb :results
    end
end