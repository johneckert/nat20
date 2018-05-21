class Nat20

  def self.roll dice_info
    #eg input = '1d6+4'
      num_dice = self.get_number_of_dice dice_info
      num_sides = self.get_number_of_sides dice_info
    if dice_info.include? '+'
      modifier = dice_info.split('d')[1].split('+')[1].to_i
    elsif dice_info.include? '-'
      modifier = 0 - dice_info.split('d')[1].split('-')[1].to_i
    else
      modifier = 0
    end

    total = 0
    num_dice.times do
      total += 1 + rand(num_sides)
    end
    total + modifier
  end

  def self.roll_multiple roll_array
    #eg input ['1d6+4', 5]
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
    

end
