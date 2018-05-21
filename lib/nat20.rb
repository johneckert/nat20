class Nat20

  def self.roll dice_info
    #eg input = '1d6+4'
    num_dice = self.get_number_of_dice dice_info
    num_sides = self.get_number_of_sides dice_info
    modifier = self.get_modifier dice_info

    rolls = []

    num_dice.times do
      actual_roll = 1 + rand(num_sides)
      puts actual_roll
      rolls << actual_roll
    end
    puts rolls
    #calculate amount to drop based on lowest dice rolls
    if self.has_drop? dice_info
      drop_val = self.num_to_drop dice_info
      rolls.sort!
      rolls.slice!(0, drop_val)
    end
    sum = 0
    rolls.each {|roll| sum + roll}
    sum + modifier
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
    if dice_info.include? '+'
      modifier = dice_info.split('d')[1].split('+')[1].to_i
    elsif dice_info.include? '-'
      modifier = 0 - dice_info.split('d')[1].split('-')[1].to_i
    else
      modifier = 0
    end
    modifier
  end

  def self.has_drop? dice_info
    dice_info.split('d').length == 3
  end

  def self.num_to_drop dice_info
    dice_info.split('d')[2][0].to_i
  end

end
