class Player 
    
    attr_reader :name, :answer
    attr_accessor :live

    def initialize(name)
      @name = name 
      @live = ['💛','💛','💛']
    
    end

    def lose?
        @live.empty? === true;
    end

    def question
      number1 = rand(1..10)
      number2 = rand(1..10)
      answer = number1 + number2
      puts "#{@name}: What doest #{number1} plus #{number2} equal?"
      puts "🔽"
      q_answer = gets.chomp.to_i
      if q_answer === answer
        puts "🟢 YES! You are correct. 🟢 "
      else
        puts "🔴 NO! Wrong answer. 🔴 "
        @live.pop()
      end
    end

end 