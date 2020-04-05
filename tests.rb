def puts(*args) end
require 'rspec/autorun'
require "./rps.rb"
include RPS

describe "Rock-Paper-Scissors::Duel" do
  print "-- Testing duels -- \n"

  describe "Rock" do
    it "Ties against Rock" do
      expect(Duel.play(move1: Rock.new, move2: Rock.new)).to eq(:tie)
    end

    it "Wins against Scissors" do
      expect(Duel.play(move1: Rock.new, move2: Scissors.new)).to be_truthy
    end

    it "Loses against Paper" do
      expect(Duel.play(move1: Rock.new, move2: Paper.new)).to be_falsy
    end
  end

  describe "Paper" do
    it "Ties against Paper" do
      expect(Duel.play(move1: Paper.new, move2: Paper.new)).to eq(:tie)
    end

    it "Wins against Rock" do
      expect(Duel.play(move1: Paper.new, move2: Rock.new)).to be_truthy
    end

    it "Loses against Scissors" do
      expect(Duel.play(move1: Paper.new, move2: Scissors.new)).to be_falsy
    end
  end

  describe "Scissors" do
    it "Ties against Scissors" do
      expect(Duel.play(move1: Scissors.new, move2: Scissors.new)).to eq(:tie)
    end

    it "Wins against Paper" do
      expect(Duel.play(move1: Scissors.new, move2: Paper.new)).to be_truthy
    end

    it "Loses against Rock" do
      expect(Duel.play(move1: Scissors.new, move2: Rock.new)).to be_falsy
    end
  end
end
