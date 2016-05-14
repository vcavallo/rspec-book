module Codebreaker
  class Game
    def initialize(output_method)
      @output_method = output_method
    end

    def start(secret)
      @secret = secret
      @output_method.puts('Welcome to Codebreaker!')
      @output_method.puts('Enter guess:')
    end

    def guess(guess)
      marker = Marker.new(@secret, guess)
      @output_method.puts '+'*marker.exact_match_count + '-'*marker.number_match_count
    end
  end
end
