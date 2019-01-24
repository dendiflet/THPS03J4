#game.rb

require_relative '../view/view'
require 'csv'
require 'pry'

class Game


  attr_reader :j1, :j2, :who_started, :j1m, :j2m, :cases_played, :actual_player, :case_just_played, :who_started, :win_combi


  #crée une nouvelle partie/instance avec tout ce qu'il faut et plus
  def initialize(name_p1,name_p2)
    #création des variables
    @j1m = Array.new
    @j2m = Array.new
    @cases_played = Array.new
    
    @j1 = name_p1
    @j2 = name_p2
    #remplie pour les tests
    @j1m = ["A1", "B3"]
    @j2m = ["B2"]
    @actual_player = @j1
    @case_just_played = ["B3"]
    @cases_played = ["A1", "B2", "B3"]
    

    #who start
    s = rand(1-2) 
    #enregistrement du prénom de qui va commencer dans la variable destinée
    case s
    when 1
      @who_started = @j1
    when 2
      @who_started = @j2
    end
    puts "\n#{who_started} va commencer !\n"
  end


  #doit retourner true ou false ou nil si aucun joueur n'a gagné
  def victory_or_not(actual_player, cases_played_by_the_player)
    #toutes les combinaison de gagne possible
    win_combi = [["A1", "A2", "A3"], ["B1", "B2", "B3"], ["C1", "C2", "C3"], ["A1", "B1", "C1"], ["A2", "B2", "C2"], ["A3", "B3", "C3"], ["A1", "B2", "C3"], ["C1", "B2", "A3"]]
    # fait passer toutes les combinaison et regarde si match



############## A FAIRE ####################@
    win_combi.each do |combi|
      puts "compare les cases jouées du joueur avec la combinaison #{combi}"
     # merge de la combi et des cases jouées dans un nouvel array
     # puis uniq! , puis si le nouvel array =3 ---> victoire
          #faut regarder la forme de combi
          binding.pry
          # arranger pour que ca mouline
        if cases_played_by_a_player == combi #mal écris
          puts "victoire"
          return true
        else
          return nil
        end
    end
############### A FAIRE ##################@


  #fin de def victory
  end




#fin de classe
end
