class 
	Choice
	attr_accessor :value

	def initialize(v)
		@value = ['p', 'r', 's']
	end
end 

class 
	Player
	
end 

class 
	Computer
end


hand = Choice.new('hand')

puts hand.value


