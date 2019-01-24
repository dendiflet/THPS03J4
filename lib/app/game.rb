#game.rb

require_relative '../view/view'
require 'csv'
require 'pry'

class Game

	attr_reader :j1, :j2, :who_started, :j1m, :j2m



  def initialize(name_p1,name_p2)
    @j1m = Array.new
    @j2m = Array.new
    @j1 = name_p1
    @j2 = name_p2
    @cases_played = [2]
#binding.pry
    @j1m = ["A1"]
    #@j2m << B2
    @actual_player = @j1
    #@case_just_played = [B2]

    #qui va commencer
		s = rand(1-2) 
    #enregistrement du prénom de qui va commencer
    case s
    when 1
    	@who_started = @j1
    when 2
    	@who_started = @j2
    end
    puts "#{who_started} va commencer"
#    nb_case_filled = cases_played.size
  end

end
