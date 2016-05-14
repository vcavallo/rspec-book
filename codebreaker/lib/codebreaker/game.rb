module Codebreaker
  class Game
    def initialize(output_method)
      @output_method = output_method
    end

    def start(secret)
      @output_method.puts('Welcome to Codebreaker!')
      @output_method.puts('Enter guess:')
    end

    def guess(guess)
    end
  end
end
