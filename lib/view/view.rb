#view.rb


require 'csv'
require 'pry'

class View

	def new_game
		#nom des deux joueurs demandé
		puts "quel est le prénom du joueur 1 ?"
		player1_just_asked = gets.chomp.to_s
		puts "quel est le prénom du joueur 1 ?"
		player2_just_asked = gets.chomp.to_s
		
		return 
		params = {
			j1: "#{player1_just_asked}", 
			j2: "#{player2_just_asked}" 
		}

	end

 def show
 end



end






