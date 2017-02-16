class Character
  
  def initialize(name, gender, role, level)
    @name = name
    @gender = gender
    @role = role
    @level = level
  end
  
end

def roles
  self.warrior = {description: "The warrior is a beast of pure physical strength. Apt with all weapon types, they win through sheer muscular beatdowns", statmods: {strength: 4, intellect: -2, endurance: 3, crtdmg: 0.3, crtchnc: 0}}
  self.mage = {description: ""}       
end

def newgame()
  puts "Welcome to Sercio"
  puts "What is your name?"
  name = gets.chomp
  puts "Are you a boy or a girl?"
  gender = gets.chomp
  puts "Would you like an explanation of the classes? [y/n]"
  explain = gets.chomp
  if explain == "y"
    
  end
  puts "What class would you like to take?"
  role = gets.chomp
  Character.new(name, gender, role, 1)
  puts "Prepare for your journey to begin...(press enter)"
  wait = gets.chomp
end