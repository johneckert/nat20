class Nat20

  def self.roll dice_info, return_arr=false #eg input = '1d6+4'
    num_dice = self.get_number_of_dice dice_info
    num_sides = self.get_number_of_sides dice_info
    modifier = self.get_modifier dice_info

    rolls = []

    num_dice.times do
      actual_roll = 1 + rand(num_sides)
      puts actual_roll
      rolls << actual_roll
    end

    if return_arr
      return rolls
    else
      sum = 0
      rolls.each {|roll| sum += roll}
      return sum + modifier
    end
  end

  def self.roll_multiple roll_array #eg input ['1d6+4', 5]
    output = []
    roll_array[1].times do
      roll = self.roll roll_array[0]
      output << roll
    end
    output
  end

  private

  def self.get_number_of_dice dice_info
    dice_info.split('d')[0].to_i
  end

  def self.get_number_of_sides dice_info
    dice_info.split('d')[1].split('+')[0].to_i
  end

  def self.get_modifier dice_info
    if dice_info.include? '+'
      modifier = dice_info.split('d')[1].split('+')[1].to_i
    elsif dice_info.include? '-'
      modifier = 0 - dice_info.split('d')[1].split('-')[1].to_i
    else
      modifier = 0
    end
    modifier
  end

end
