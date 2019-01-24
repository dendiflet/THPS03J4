#view.rb


require 'csv'
require 'pry'

class View

  attr_reader :all_combinaison_possible



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
  	case_just_proposed_ok = Array.new
    puts "quel case veut tu jouer #{actual_player} ?"
 	  #print "\n#{actual_player} a jouer ces cases #{case_deja_jouee} \n"
    case_just_proposed = Array.new
 	  case_just_proposed << gets.chomp.upcase

# puts case_deja_jouee
# puts case_just_proposed 
# puts case_deja_jouee.class
# puts case_just_proposed.class
# print case_deja_jouee


#vérifier que l'entrée correspond bien a une case
all_combinaison_possible = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3", "1A", "2A", "3A", "1B", "2B", "3B", "1C", "2C", "3C"]
all_combinaison_possible << case_just_proposed
# uniq! est bien pratique !
if all_combinaison_possible.uniq! == nil
	puts "cette case n'existe pas connard\n"
 	   	turn_ask(case_deja_jouee, actual_player)
end



#vérifie que la personne a pas entrer l'imput a l'envert
if case_just_proposed[0].chr.include? "1" #|| case_just_proposed[0].chr.include? "2" || case_just_proposed[0].chr.include? "3"	
then
	puts "connard"
	# retourne l'imput
  case_just_proposed_ok << case_just_proposed[0].reverse!
  puts case_just_proposed_ok
end
################# a faire pour 2 et 3 ################@

binding.pry




    # ajoute la casse proposée a celles déja jouée
    case_deja_jouee << case_just_proposed_ok[0] #ajout de la val sinon trop de []
    #vérifie si elle est pas en double
 	  if case_deja_jouee.uniq! == nil   #si pas en double uniq! renvoye nil
 	     return case_just_proposed_ok
 	  else
 	   	puts "case deja jouée connard, essaye une autre case\n"
 	   	turn_ask(case_deja_jouee, actual_player)
 	  end






 	  # unless case_just_proposed & case_deja_jouee != nil
 	  #   return case_just_played = case_just_proposed
 	  # else
 	  # 	puts "case deja jouée, essaye une autre case"
 	  # 	turn_ask(case_deja_jouee, actual_player)
 	  # end







  end

end






