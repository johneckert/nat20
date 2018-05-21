require 'nat20'

RSpec.describe Nat20 do
  describe '#roll' do
    it 'returns a value when the second argument is omitted' do
      die = Nat20.roll('2d8')
      expect(die).to be_between(2, 16)
    end

    it 'returns a value when the second argument is false' do
      die = Nat20.roll('1d20', false)
      expect(die).to be_between(1, 20)
    end

    it 'returns an array when the second argument is true' do
      die = Nat20.roll('3d6', true)
      expect(die).to be_a_kind_of(Array)
    end

    it 'accepts positive modifier' do
      die = Nat20.roll('2d4+7', false)
      expect(die).to be_between(9, 15)
    end

    it 'accepts negative modifier' do
      die = Nat20.roll('2d10-1', false)
      expect(die).to be_between(1, 19)
    end
  end

  describe '#roll_multiple' do
    it 'returns an array of multiple #rolls' do
      dice = Nat20.roll_multiple('2d8', 4)
      expect(dice).to be_a_kind_of(Array)
    end
  end

  describe '#get_number_of_dice' do
    it 'returns number of dice from input string' do
      dice = Nat20.get_number_of_dice('2d8')
      expect(dice).to be(2)
    end
  end

  describe '#get_number_of_sides' do
    it 'returns number of sides from input string' do
      sides = Nat20.get_number_of_sides('2d8')
      expect(sides).to be(8)
    end
  end

  describe '#get_modifier' do
    it 'returns positive modifier when + is used' do
      modifier = Nat20.get_modifier('2d8+3')
      expect(modifier).to be(3)
    end

    it 'returns negative modifier when - is used' do
      modifier = Nat20.get_modifier('2d8-1')
      expect(modifier).to be(-1)
    end

    it 'returns 0 when modifier is omitted' do
      modifier = Nat20.get_modifier('2d8')
      expect(modifier).to be(0)
    end

  end


end
