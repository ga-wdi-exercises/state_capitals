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

states.shuffle!

# def play
  puts "++++++++++++++++++++++++++++++++++++++++++++++"
  puts "Are ya ready kids??!!"
  puts "Yes/No"
  puts "++++++++++++++++++++++++++++++++++++++++++++++"

  user_input_start = gets.chomp.to_s.upcase

  if user_input_start == "YES"

    puts "Lets Go!"

    def play_game(arr1)

      index = 0
      right = 0
      wrong = 0

      while index < arr1.length

        name = arr1[index][:name]
        capital = arr1[index][:capital]
        puts " "
        puts "What is the capital of #{name}?"
        puts " "

        user_answer1 = gets.chomp.to_s
        if user_answer1 == capital
          puts "Correct Homie"
          right += 1
        else
          puts " "
          puts "WRONGGGGG! It was acutally #{capital}."
          puts " "
          wrong += 1
        end

        index += 1
        puts " "
        puts "Right: #{right}"
        puts "Wrong: #{wrong}"
      end

    end

    play_game(states)
    puts " "
    puts "Not bad. Not bad. But can you do better?"

  else
    puts ":("
    end
# end
#
# play
#
#
#
# def new_game(meth1)
#   puts " "
#   puts "Not bad. Not bad. But can you do better?"
#   puts "Yes/No"
#   puts " "
#
#   user_input_new_game = gets.chomp.to_s.upcase
#
#   if user_input_new_game == "YES"
#     meth1
#   else
#     puts "Game Over"
# end
# end
#
# new_game(play)
