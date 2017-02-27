require 'random'

class Character
  
  def initialize(name, gender, role, level)
    @name = name
    @gender = gender
    @role = role
    @level = level
  end
  
end

class Roles
  
  attr_accessor :role, :description
  def initialize(role)
    @role = role
    if @role == "warrior"
      @description = "The warrior is a beast of pure physical strength. Apt with all weapon types, they win through sheer muscular beatdowns"
      @statmods = {strength: 4, intellect: -2, endurance: 3, crtdmg: 0.3, crtchnc: 0}
    end
    if @role == "mage"
     @description = "The mage is a master of the arcane arts, channeling raw aether through staves or wands, they burn and freeze their way to victory"
     @statmods = {strength: -2, intellect: 4, endurace: 0, crtdmg: 0.5, crtchnc: 2}
    end
  end
  
  def self.exists?(role)
    if role == "warrior" || role == "mage"
      return true
    else
      return false
    end
  end
end

def stats()
  
end

def newgame()
  choice = "n"
  puts "Welcome to Sercio"
  puts "What is your name?"
  name = gets.chomp
  puts "Are you a boy or a girl?"
  gender = gets.chomp
  while choice != "y"
  puts "What class would you like to take?"
  puts "Options are: warrior, mage"
  puts "Type in an option to get more information. Fear not, you will be asked before locking in your choice."
  role = gets.chomp
  if Roles.exists?(role)
    r = Roles.new(role)
    puts "You have chosen #{role}"
    puts r.description
    puts "Is this your wish? [y/n]"
    choice = gets.chomp
  else
    puts "I'm sorry, I can't seem to find that class."
  end
  end
  Character.new(name, gender, role, 1)
  puts "Prepare for your journey to begin...(press enter)"
  wait = gets.chomp
end

newgame
