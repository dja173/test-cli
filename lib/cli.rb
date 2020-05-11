class CLI
  PETS = ["Hound", "Non-pitbull", "Pitbull-mix"]

  def call
    puts "\nWELCOME TO VILLALOBOS RESCUE CENTER!".light_purple
    puts "--------------------------------"
    start
  end
  
    def start
    puts "What kind of dog are you interested in finding today? (Please enter a number)\n".cyan
    
     PETS.each.with_index(1) do |animal, number|
      puts "#{number}. #{animal}"
    end

    user_input = number_to_index(gets.chomp)