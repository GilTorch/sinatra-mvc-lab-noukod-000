require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_phrase=params[:user_phrase]
    @pig_latinized_phrase=PigLatinizer.new.piglatinize(@user_phrase)
    erb :pig_latinized
  end

end
