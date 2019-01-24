#controller.rb

#controller.rb
require 'view/view'
require 'app/game'
require 'pry'


class Controller

  def initialize
  	@view = View.new
  end

	def create_game
		params = @view.new_game		
    @new_game = Game.new(params[:j1], params[:j2] )

#binding.pry

    partie
	end

  def partie
    
    # affichage du jeux
    @view.show(@new_game.j1m, @new_game.j2m)
    # demande la case a jouer

#binding.pry

    new_case_played = @view.turn_ask(@new_game.cases_played, @new_game.actual_player)

    # ajout au cases jouées de chaque joueurs
    if @new_game.actual_player == @new_game.j1
    	@new_game.j1m << new_case_played
    	if @new_game.victory_or_not(@new_game.j1m)



    elsif @new_game.actual_player == @new_game.j2
    	@new_game.j1m << new_case_played
    end
    # ajout aux cases jouées en général
    @cases_played << new_case_played
    # regarde combien de cases on été jouées
    nb_case_filled = @new_games.cases_played.size

    new_game.victory_or_not
  end

end

end
