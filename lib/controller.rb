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
		params = @view.new_game
    new_game = Game.new(params[:j1], params[:j2] )
    system ("new_game")
    binding.pry
    
	end
end


