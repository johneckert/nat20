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

end
