# an array of state hashes
states =[
{
    name: "Alabama",
    capital: "Montgomery"
}, {
    name: "Alaska",
    capital: "Juneau"
}, {
    name: "Arizona",
    capital: "Phoenix"
}, {
    name: "Arkansas",
    capital: "Little Rock"
}, {
    name: "California",
    capital: "Sacramento"
}, {
    name: "Colorado",
    capital: "Denver"
}, {
    name: "Connecticut",
    capital: "Hartford"
}, {
    name: "Delaware",
    capital: "Dover"
}, {
    name: "Florida",
    capital: "Tallahassee"
}, {
    name: "Georgia",
    capital: "Atlanta"
}, {
    name: "Hawaii",
    capital: "Honolulu"
}, {
    name: "Idaho",
    capital: "Boise"
}, {
    name: "Illinois",
    capital: "Springfield"
}, {
    name: "Indiana",
    capital: "Indianapolis"
}, {
    name: "Iowa",
    capital: "Des Moines"
}, {
    name: "Kansas",
    capital: "Topeka"
}, {
    name: "Kentucky",
    capital: "Frankfort"
}, {
    name: "Louisiana",
    capital: "Baton Rouge"
}, {
    name: "Maine",
    capital: "Augusta"
}, {
    name: "Maryland",
    capital: "Annapolis"
}, {
    name: "Massachusetts",
    capital: "Boston"
}, {
    name: "Michigan",
    capital: "Lansing"
}, {
    name: "Minnesota",
    capital: "St. Paul"
}, {
    name: "Mississippi",
    capital: "Jackson"
}, {
    name: "Missouri",
    capital: "Jefferson City"
}, {
    name: "Montana",
    capital: "Helena"
}, {
    name: "Nebraska",
    capital: "Lincoln"
}, {
    name: "Nevada",
    capital: "Carson City"
}, {
    name: "New Hampshire",
    capital: "Concord"
}, {
    name: "New Jersey",
    capital: "Trenton"
}, {
    name: "New Mexico",
    capital: "Santa Fe"
}, {
    name: "New York",
    capital: "Albany"
}, {
    name: "North Carolina",
    capital: "Raleigh"
}, {
    name: "North Dakota",
    capital: "Bismarck"
}, {
    name: "Ohio",
    capital: "Columbus"
}, {
    name: "Oklahoma",
    capital: "Oklahoma City"
}, {
    name: "Oregon",
    capital: "Salem"
}, {
    name: "Pennsylvania",
    capital: "Harrisburg"
}, {
    name: "Rhode Island",
    capital: "Providence"
}, {
    name: "South Carolina",
    capital: "Columbia"
}, {
    name: "South Dakota",
    capital: "Pierre"
}, {
    name: "Tennessee",
    capital: "Nashville"
}, {
    name: "Texas",
    capital: "Austin"
}, {
    name: "Utah",
    capital: "Salt Lake City"
}, {
    name: "Vermont",
    capital: "Montpelier"
}, {
    name: "Virginia",
    capital: "Richmond"
}, {
    name: "Washington",
    capital: "Olympia"
}, {
    name: "West Virginia",
    capital: "Charleston"
}, {
    name: "Wisconsin",
    capital: "Madison"
}, {
    name: "Wyoming",
    capital: "Cheyenne"
}]

test = [{
    name: "Alabama",
    capital: "Montgomery"
}, {
    name: "Alaska",
    capital: "Juneau"
}]

$line_break = "#" * 80

class Game
  attr_accessor :states, :score, :rounds

  def initialize(states)
    @states = states.shuffle!
    @score = 0
    @rounds = 0
    self.add_keys
  end

  def run_questions
    @states.each_with_index do |state,i|
      puts $line_break
      puts "  #{i + 1}. What is the state capital of #{state[:name]}"
      puts $line_break
      answer = gets.chomp.split.map(&:capitalize).join(" ")
      # attempting to add hint
      if answer == "Hint"
        puts state[:capital][0...3]
        answer = gets.chomp
      end

      if answer == state[:capital]
        @score += 1
        state[:correct] += 1
        state[:tries] += 1
        puts "\n  Correct response!!\n  #{@score} correct out of 50\n  You have answered this correctly #{state[:correct]} out of #{state[:tries]} tries.\n "
      elsif answer == "Quit"
        puts "Goodbye!"
        break
      else
        state[:tries] += 1
        puts "\n  That is the incorrect response\n  #{@score} correct out of 50\n  You have answered this correctly #{state[:correct]} out of #{state[:tries]} tries.\n "
      end
    end
    while true
      puts "\n  Game complete!  Do you want to play again? (y/n)\n "
      play_again = gets.chomp.downcase
      break if play_again == "n"
      if play_again == "y"
        self.reset
        self.run_questions
      end
    end
  end

  def add_keys
    self.states.each do |x|
      x[:tries] = 0
      x[:correct] = 0
    end
  end

  def reset
    @score = 0
    @states.shuffle!
    @states.sort_by { |answers| answers[:correct] }
    self.run_questions
  end

end

state_caps = Game.new(states)

puts $line_break
puts "  Welcome to State Capitals!!  Identify each state capital when prompted."
puts "  To begin, enter 'ready' and to exit enter 'quit' at anytime."
puts $line_break

while true
  user_input = gets.chomp
  break if user_input == "quit"
  if user_input == "ready"
    state_caps.run_questions
    break
  end
end
