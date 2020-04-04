module RPS

  class Duel
    def self.play(move1:, move2:)
      return :tie if move1.class == move2.class

      move2.wins_against?(move1) ? loser(move1, move2) : winner(move1, move2)
      return !move2.wins_against?(move1)
    end

    def self.winner(move1, move2)
      puts "#{move1.class} wins against #{move2.class}"
    end

    def self.loser(move1, move2)
      puts "#{move1.class} loses against #{move2.class}"
    end
  end

end

