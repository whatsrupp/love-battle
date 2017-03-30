require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect('/play')
  end

  get '/play' do
    @player1_name = $player1.named
    @player2_name = $player2.named
    erb(:play)
  end

  get '/attack' do
    @player1_name = $player1.named
    @player2_name = $player2.named
    erb(:attack)
  end

end
