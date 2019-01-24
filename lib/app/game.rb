#game.rb

require_relative '../view/view'
require 'csv'
require 'pry'

class Game

	attr_reader :j1, :j2, :who_started

  def initialize(name_p1,name_p2)
    @j1 = name_p1
    @j2 = name_p2
    @cases_played = []
    @j1m = []
    @j2m = []
    @actual_player = @j1
    @case_just_played = []

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

  # def read_and_return
  # 	print 
  # end
end
