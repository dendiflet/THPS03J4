#view.rb


require 'csv'
require 'pry'

class View

	def new_game
		#nom des deux joueurs demandé
		puts "quel est le prénom du joueur 1 ?"
		player1_just_asked = "yaya"   #gets.chomp.to_s
		puts "quel est le prénom du joueur 1 ?"
		player2_just_asked = "beber" #gets.chomp.to_s
		
		return @params = {
			j1: "#{player1_just_asked}", 
			j2: "#{player2_just_asked}" 
		}

	end

 def show(array_j1_cases_played, array_j2_cases_played)

 	print "#{@params[:j1]} a jouer ces cases #{array_j1_cases_played} \n"
 	print "#{@params[:j2]} a jouer ces cases #{array_j2_cases_played} \n"

 end



end






