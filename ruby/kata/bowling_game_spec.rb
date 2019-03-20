require 'rspec'

class Bowling

  def initialize
    @first_in_frame = 0
  end

  def pins(rolls)
    @rolls = rolls
  end

  def score
    frame = 0
    score = 0

    while frame < 10
      if is_spare?
        score += 10 + bonus_for_spare
        @first_in_frame += 2
      elsif is_strike?
        score += 10 + bonus_for_strike
        @first_in_frame += 1
      else
        score += standard_frame_score
        @first_in_frame += 2
      end

      frame += 1
    end

    score
  end

  def is_spare?
    standard_frame_score == 10
  end

  def is_strike?
    @rolls[@first_in_frame] == 10
  end

  def standard_frame_score
    @rolls[@first_in_frame] + @rolls[@first_in_frame + 1]
  end

  def bonus_for_strike
    @rolls[@first_in_frame+1] + @rolls[@first_in_frame + 2]
  end

  def bonus_for_spare
    @rolls[@first_in_frame + 2]
  end
end

describe Bowling do
  context 'simple rules' do
    let(:game){Bowling.new}

    it '0' do
      game.pins([0]*20)
      expect(game.score).to eql(0)
    end

    it '20' do
      game.pins([1]*20)
      expect(game.score).to eql(20)
    end

    it 'with spare' do
      game.pins([4,6,5] + [0]*17)
      expect(game.score).to eql(20)
    end

    it 'with strike' do
      game.pins([10,3,5] + [0]*17)
      expect(game.score).to eql(26)
    end

    it 'with strike' do
      game.pins([10]*12)
      expect(game.score).to eql(300)
    end
  end
end