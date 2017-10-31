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

for state in states do
  state[:right] = 0
  state[:wrong] = 0
end
states = states.shuffle
overall_right = 0
overall_total = 0

while true
  puts "Welcome!  Hope you're here to learn the state capitals!"
  puts "Are you ready to learn? (yes/no)"
  input = gets.chomp
  if input == "yes"
    for cap in states do
      puts "Now what's the capital of #{cap[:name]}? #{overall_right} out of #{overall_total} (if you're desperate, type 'hint')"
      guess = gets.chomp
      if guess == cap[:capital]
        cap[:right] += 1
        total = cap[:right]+cap[:wrong]
        overall_right += 1
        overall_total += 1
        puts "Nice! You've gotten that one right #{cap[:right]}/#{total} times"
      elsif guess == "hint"
        puts "'#{cap[:capital][0]}#{cap[:capital][1]}#{cap[:capital][2]}' are the first three letters.  You've got this."
        hint_guess = gets.chomp
        if
          hint_guess == cap[:capital]
          cap[:right] += 1
          total = cap[:right]+cap[:wrong]
          overall_right += 1
          overall_total += 1
          puts "Nice! You've gotten that one right #{cap[:right]}/#{total} times"
        else
          cap[:wrong] += 1
          total = cap[:right]+cap[:wrong]
          overall_total += 1
          puts "Oy, keep at it. You've gotten that one right #{cap[:right]}/#{total} times"
        end
      else
        cap[:wrong] += 1
        total = cap[:right]+cap[:wrong]
        overall_total += 1
        puts "Oy, keep at it. You've gotten that one right #{cap[:right]}/#{total} times"
      end
    end
  else
    break
  end
end
