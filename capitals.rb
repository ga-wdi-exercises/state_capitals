require 'pry'
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

st = [
{
    name: "Alabama",
    capital: "Montgomery"
}, {
    name: "Connecticut",
    capital: "Hartford"
}, {
    name: "Wisconsin",
    capital: "Madison"
}]

def check guess, state
  return guess.downcase == state[:capital].downcase
end

def add_right_wrong state
  if state[:correct] == nil
    state[:correct] = 0
  end
  if state[:wrong] == nil
    state[:wrong] = 0
  end
end

def get_total deck

end

def play states
  deck = states.shuffle
  deck.length.times do |i|
    add_right_wrong deck[i]
    puts "\nWhat's the capital of #{deck[i][:name]}?"
    input = gets.chomp
    break if input == 'q'
    if (check input, deck[i]) == false
      deck[i][:wrong] += 1
      p "I'm sorry! The correct answer is #{deck[i][:capital]}. (#{deck[i][:correct]} / #{deck[i][:correct] + deck[i][:wrong]})"
      # I tried to print out a percentage, but I never got it working properly! Any idea why? Each part of that expression works on its own, but when I try to combine them, I get 0;
      p (deck[i][:correct] / (deck[i][:correct] + deck[i][:wrong]))
    else
      deck[i][:correct] += 1
      p "That's right! (#{deck[i][:correct]} / #{deck[i][:correct] + deck[i][:wrong]})"
    end
  end
  p "Would you like to play again? Press `y` to continue, or anything else to quit"
  again = gets.chomp
  if again == "y"
    play deck
  end
end

# Any thoughts on this block below? I couldn't get it to work.

# def get_total states
#   c = states.reduce do |total, n|
#     return total[:correct] += n[:correct]
#   end
#   w = states.reduce do |total, n|
#     return total[:wrong] += n[:wrong]
#   end
#   puts c, w
#   return [c, w]
# end

# def endGame states



puts "\nWelcome to the STATES AND CAPITALS GAME!"
puts "When I tell you the name of a state, tell me the capital. It's that easy!"
puts "If you want to quit, just type in `q` at the prompt"
puts "\n----\n\n"

play states

puts "Would you like to play again?"



binding.pry
