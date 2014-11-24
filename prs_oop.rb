class 
	Choice
	attr_accessor :value

	def initialize(v)
		@value = ['p', 'r', 's']
	end
end 

class 
	Player
	attr_accessor :player

	def initialize(p)
		@player = p
	end
end 

class 
	Opponent
	attr_accessor :opponent

	def initialize(o)
		@opponent = o
	end
end

class Prs
	attr_accessor :player, :opponent, :value

	def initialize
		@player = Player.new("Ben")
		@opponent = Opponent.new
		@value = Choice.new 
	end

# 	def run 
# 		player_choice
# 		opponent_choice
# 		compare_hands
# 		who_won?
# 	end

end

# Prs.new.run 




hand = Choice.new('hand')

puts "Welcome to Paper, Scissors, Rock! What's your name?"
puts hand.value
