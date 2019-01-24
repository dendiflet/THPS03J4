#game.rb

require_relative '../view/view'
require 'csv'
require 'pry'

class Game


  attr_reader :j1, :j2, :who_started, :j1m, :j2m, :cases_played, :actual_player, :case_just_played

  def initialize(name_p1,name_p2)
    @j1m = Array.new
    @j2m = Array.new
    @cases_played = Array.new
    
    @j1 = name_p1
    @j2 = name_p2
    @cases_played = ["A1", "B2"]
    @j1m = ["A1", "B6"]
    @j2m = ["B2"]
    @actual_player = @j1
    @case_just_played = ["B2"]
    #qui va commencer
    s = rand(1-2) 
    #enregistrement du prénom de qui va commencer
    case s
    when 1
      @who_started = @j1
    when 2
      @who_started = @j2
    end
    puts "\n#{who_started} va commencer !\n"
  end

  def victory_or_not(cases_played_by_a_player)
   
  win_combi = [[A1, A2, A3], [B1,B2,B3], [C1, C2, C3], [A1, B1, C1], [A2, B2, C2], [A3, B3, C3], [A1, B2, C3], [C1, B2, A3]]
  win_combi.each do |combi|
      if cases_played_by_a_player == combi
        puts "victoire"
      end
    end
  end




end
