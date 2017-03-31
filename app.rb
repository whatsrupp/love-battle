require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    $new_game = Game.new(player1, player2)
    redirect('/play')
  end

  get '/play' do
    @game = $new_game
    erb(:play)
  end

  get '/attack' do
    @game = $new_game
    @game.attack(@game.player2)
    erb(:attack)
  end

end
