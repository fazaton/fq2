class GamesController < ApplicationController 
    def index
        @game = Game.order("RANDOM()").first
    end
    
    def new
        @game = Game.new
    end
    
    def create
       Game.create(game_params)
       redirect_to root_path
    end
    
    private
    
    def game_params
        params.require(:game).permit(:gname, :rate)
    end
end

