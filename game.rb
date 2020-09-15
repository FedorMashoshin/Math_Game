require_relative './player'

class Game 
  
    def initialize
      @player1 = Player.new("Sam")
      @player2 = Player.new("Amanda")
      @players=[@player1, @player2].shuffle
    end

    def new_turn
      puts "-----------------------------------------"
      puts "\t\t NEW TURN "
      puts "-----------------------------------------"
      @players.rotate!
    end

    def game_status
      puts "\n"
      @players.each{|player| puts "#{player.name}: #{player.lose? ? 'LOSER' : player.live}"}
      puts "\n"
    end

    def winner
        # player who is not lose
        winner = @players.find{|player| !player.lose? }
        puts "-----------------------------------------"
        puts "\t\t GAME OVER "
        puts "-----------------------------------------"
    
      end

    def game_over?
        @players.select{|player| player.lose?}.count > 0
      end

    def play 
      until (game_over?) do   
        question_first = @players.first
        new_turn
        question_first.question
        game_status
      end 
      winner
    end
end 