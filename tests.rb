def puts(*args) end
require "minitest/autorun"
require "./rps.rb"
include RPS

describe "Rock-Paper-Scissors::Duel" do
  print "-- Testing duels -- \n"

  describe "Rock" do
    it "Ties against Rock" do
      assert_equal :tie, Duel.play(move1: Rock.new, move2: Rock.new)
    end

    it " Wins against Scissors" do
      assert Duel.play(move1: Rock.new, move2: Scissors.new)
    end

    it "Loses against Paper" do
      refute Duel.play(move1: Rock.new, move2: Paper.new)
    end
  end

  describe "Paper" do
    it "Ties against Paper" do
      assert_equal :tie, Duel.play(move1: Paper.new, move2: Paper.new)
    end

    it "Wins against Rock" do
      assert Duel.play(move1: Paper.new, move2: Rock.new)
    end

    it "Loses against Scissors" do
      refute Duel.play(move1: Paper.new, move2: Scissors.new)
    end
  end

  describe "Scissors" do
    it "Ties against Scissors" do
      assert_equal :tie, Duel.play(move1: Scissors.new, move2: Scissors.new)
    end

    it "Wins against Paper" do
      assert Duel.play(move1: Scissors.new, move2: Paper.new)
    end

    it "Loses against Rock" do
      refute Duel.play(move1: Scissors.new, move2: Rock.new)
    end
  end
end
