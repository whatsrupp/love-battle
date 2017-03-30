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
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player1_hp = $player1.hp
    @player2_hp = $player2.hp
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1 # Because it's a global variable, we can access it.
    @player2 = $player2
    @player1.attack(@player2)
    @player2_hp = $player2.hp
    erb(:attack)
  end

end
