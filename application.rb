#router.rb

# router.rb

require_relative 'lib/app/game'
require_relative 'lib/controller'


class Application

  def initialize
		@controller = Controller.new
  end #ici, des que app.rb créer une instance routeur, une instance game est crée auto
  

	def perform
		puts "salut Maurice, voici le progamme potin !"
		while true

			#affiche un menu, comparable a une requete url
			puts "que veux tu faire?"
			puts " 1 -> jouer une partie"
			# puts " 2 -> afficher les ragots"
			# puts " 3 -> supprimer un ragot"
			puts " 4 -> quitter l'application"
			choice =  gets.chomp.to_i

			# ici la redirection en fonction du choix
			case choice
			when 1
				@controller.create_game
			# when 2
			# 	@controller.index_gossips
			# when 3
			# 	@controller.delete_gossip
			when 4
				puts "bye, a bientôt"
				break
			else
				puts "ce choix n'existe pas, merci de reessayer"
			end

		end
	end
end
