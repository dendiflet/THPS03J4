#view.rb


require 'csv'
require 'pry'

class View

	def new_game
		#nom des deux joueurs demandé
		puts "quel est le prénom du joueur 1 ?"
		player1_just_asked = "yaya"   #gets.chomp.to_s
		puts "quel est le prénom du joueur 2 ?"
		player2_just_asked = "beber" #gets.chomp.to_s
		
		return @params = {
			j1: "#{player1_just_asked}", 
			j2: "#{player2_just_asked}" 
		}

	end

  def show(array_j1_cases_played, array_j2_cases_played)
  	system ("clear")
    puts "\n voici la grille de morpions\n"
    puts "       A1|B1|C1 "
    puts "      ----------"
    puts "       A2|B2|C2 "
    puts "      ----------"
    puts "       A3|B3|C3 \n"
 	  print "#{@params[:j1]} a jouer ces cases #{array_j1_cases_played} \n"
 	  print "#{@params[:j2]} a jouer ces cases #{array_j2_cases_played} \n"
  end

  def turn_ask(case_deja_jouee, actual_player)
    puts "quel case veut tu jouer #{actual_player} ?"
 	  case_just_played = gets.chomp.to_s

 	  print "\n#{actual_player} a jouer ces cases #{case_deja_jouee} \n"

    binding.pry

 	  unless case_just_played == case_deja_jouee
 	    return case_just_played
 	  else
 	  	puts "case deja jouée, essaye une autre case"
 	  	turn_ask(case_deja_jouee, actual_player)
 	  end
  end

end






