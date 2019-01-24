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
    # comment s'appellent les joueurs
		params = @view.new_game		
    #création d'une partie/intance de jeux
    @new_game = Game.new(params[:j1], params[:j2] )

#binding.pry

    #lancement de la partie
    partie
	end

  def partie
    
    unless nb_case_filled = 9
      # comment s'appellent les joueurs
      @view.show(@new_game.j1m, @new_game.j2m)
      # demande la case a jouer
      # l'imput a été vérifié dans le view
      new_case_played = @view.turn_ask(@new_game.cases_played, @new_game.actual_player)
###########@ fonctionne
      binding.pry
      # ajout au cases jouées de chaque joueurs + verif victoire
      if @new_game.actual_player == @new_game.j1  #joueur 1
      	@new_game.j1m << new_case_played
        victoire = @new_game.victory_or_not(@new_game.actual_player, @new_game.j1m)
        if vitoire == true #si oui, déclenche visu
          view.won(@new_game.actual_player)
          break
        end
      elsif @new_game.actual_player == @new_game.j2 #joueur 2
        @new_game.j2m << new_case_played
        victoire = @new_game.victory_or_not(@new_game.actual_player, @new_game.j2m)
        if victoire == true #si oui, déclenche visu
          view.won(@new_game.actual_player)
          break
        end
      end

binding.pry

      # ajout de la case aux cases jouées
      @cases_played << new_case_played
      # regarde combien de cases on été jouées
      nb_case_filled = @new_games.cases_played.size
      if nb_case_filled = 9
        new_game.won()
        break
      end
    end   
  #fin de partie
  end
#fin de class
end
