module RPS

  class Duel
    def self.play(move1:, move2:)
      return :tie if move1.class == move2.class

      handle_result(move1, move2)
    end

    def self.handle_result(move1, move2)
      if move2.wins_against?(move1)
        puts "#{move1.class} loses against #{move2.class}"
        return false
      else
        puts "#{move1.class} wins against #{move2.class}"
        return true
      end
    end
  end

  class Rock
    def wins_against?(opponent)
      !opponent.beats_rock?
    end

    def beats_paper?
      false
    end

    def beats_scissors?
      true
    end
  end

  class Paper
    def wins_against?(opponent)
      !opponent.beats_paper?
    end

    def beats_rock?
      true
    end

    def beats_scissors?
      false
    end
  end

  class Scissors
    def wins_against?(opponent)
      !opponent.beats_scissors?
    end

    def beats_paper?
      true
    end

    def beats_rock?
      false
    end
  end

end
