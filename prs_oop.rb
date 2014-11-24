class Player

	attr_accessor :choice
	attr_reader :name
	def initialize(n)
		@name = n
	end

	def make_choice
		begin 
    	puts "Choose either paper(p), rock(r) or scissors(s)."
    	c = gets.chomp.downcase
    end until Game::CHOICES.keys.include?(c)

    self.choice = c
	end
	def player_choice
		"#{name} chose #{choice}!"
	end
end 





class Opponent
	attr_accessor :choice
	attr_reader :opponent

	def initialize(o)
		@opponent = o
	end

	def random_choice
		c = Game::CHOICES.keys.sample
		self.choice = c
	end

	def computer_choice
		"#{opponent} chose #{choice}!"
	end
end




class Game
	CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}
	attr_reader :player, :opponent

	def initialize
		@player = Player.new("Ben")
		@opponent = Opponent.new("HAL")
	end

	def compare_choices
		if player.choice == opponent.choice
	    puts "It's a tie!"
	  elsif (player.choice == 'p' && opponent.choice == 'r') || (player.choice == 'r' && opponent.choice  == 's') || (player.choice == 's' && opponent.choice =='p')
	    "Congratulations! #{player.name} won this round!"
	  else
	    puts "Oh no, #{player.name} lost this round! #{opponent.name} wins!"
	  end
	end

	def play
		player.make_choice
		opponent.random_choice
		puts player.player_choice
		puts opponent.computer_choice
		puts compare_choices
	end
end



game = Game.new.play





# puts "Let's play Paper, Scissors, Rock! What's your name?"
# player = gets.chomp
# puts "Welcome #{player}, choose either paper (p), rock (r) or scissors(s)."
# puts hand.value
