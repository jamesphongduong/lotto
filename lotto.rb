=begin
/ program designed to have a loto system.
/ user inputs how many players are playing
/ next step, loto game is played
/ prints out hash of player names + associated number and and loto winner (if any)
=end

class Loto
    #attr_reader :winning_number, :random_number

    def initialize
        @winning_number = rand(10)
        @random_number = rand(10)
    end
    def play 
        p "winning number: #{@winning_number}"
        p "your number: #{@random_number}"
        if @winning_number == @random_number
            puts "you won!!!!"
        else
            puts "sorry mate"
        end
    end
end

class Player < Loto
    def initialize(name)
        super()
        @name = name
    end
end

player1 = Player.new('John')
player1.play 


