$states =[{name: "Alabama", capital: "Montgomery"},
         {name: "Alaska", capital: "Juneau"},
         {name: "Arizona", capital: "Phoenix"},
         {name: "Arkansas",capital: "Little Rock"},
         {name: "California",capital: "Sacramento"},
         {name: "Colorado", capital: "Denver"},
         {name: "Connecticut", capital: "Hartford"},
         {name: "Delaware", capital: "Dover"},
         {name: "Florida", capital: "Tallahassee"},
         {name: "Georgia", capital: "Atlanta"},
         {name: "Hawaii", capital: "Honolulu"},
         {name: "Idaho", capital: "Boise"},
         {name: "Illinois", capital: "Springfield"},
         {name: "Indiana", capital: "Indianapolis"},
         {name: "Iowa", capital: "Des Moines"},
         {name: "Kansas", capital: "Topeka"},
         {name: "Kentucky", capital: "Frankfort"},
         {name: "Louisiana", capital: "Baton Rouge"},
         {name: "Maine", capital: "Augusta"},
         {name: "Maryland", capital: "Annapolis"},
         {name: "Massachusetts", capital: "Boston"},
         {name: "Michigan", capital: "Lansing"},
         {name: "Minnesota", capital: "St. Paul"},
         {name: "Mississippi", capital: "Jackson"},
         {name: "Missouri", capital: "Jefferson City"},
         {name: "Montana", capital: "Helena"},
         {name: "Nebraska", capital: "Lincoln"},
         {name: "Nevada", capital: "Carson City"},
         {name: "New Hampshire", capital: "Concord"},
         {name: "New Jersey", capital: "Trenton"},
         {name: "New Mexico", capital: "Santa Fe"},
         {name: "New York", capital: "Albany"},
         {name: "North Carolina", capital: "Raleigh"},
         {name: "North Dakota", capital: "Bismarck"},
         {name: "Ohio", capital: "Columbus"},
         {name: "Oklahoma", capital: "Oklahoma City"},
         {name: "Oregon", capital: "Salem"},
         {name: "Pennsylvania", capital: "Harrisburg"},
         {name: "Rhode Island", capital: "Providence"},
         {name: "South Carolina", capital: "Columbia"},
         {name: "South Dakota", capital: "Pierre"},
         {name: "Tennessee", capital: "Nashville"},
         {name: "Texas", capital: "Austin"},
         {name: "Utah", capital: "Salt Lake City"},
         {name: "Vermont", capital: "Montpelier"},
         {name: "Virginia", capital: "Richmond"},
         {name: "Washington", capital: "Olympia"},
         {name: "West Virginia", capital: "Charleston"},
         {name: "Wisconsin", capital: "Madison"},
         {name: "Wyoming", capital: "Cheyenne"}]

$states.shuffle!

$states.each do |state|
  state[:correct] = 0
  state[:wrong] = 0
end

$total_correct = 0
$total_wrong = 0

puts "\nHello! Do you know your US capitals? Let's find out! ..."

def handle(state)
  puts "\nWhat is the capital of #{state[:name]}?"
  input = gets.chomp
  if input == state[:capital]
    puts "That's correct!"
    state[:correct] += 1
    $total_correct += 1
  else
    puts "Sorry, the answer is #{state[:capital]}."
    state[:wrong] += 1
    $total_wrong += 1
  end
  puts "Your #{state[:name]} score is #{state[:correct]} out of #{state[:correct]+state[:wrong]}."
  puts "Your total score is #{$total_correct} out of #{$total_correct+$total_wrong}."
end

def play
  $states.each{|state| handle(state)}
  puts "\nYou have gone through all 50 states. Would you like to play again? (y/n)"
  input = gets.chomp.downcase
  if input == "y"
    $states.sort_by!{|state| state[:correct]}
    play
  end
end

play
