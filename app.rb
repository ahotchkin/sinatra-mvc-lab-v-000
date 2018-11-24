require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post'/piglatinize' do
    params[:user_phrase]
    # @piglatinized_phrase = PigLatinizer.new(params[:user_phrase])
    
  end
end
