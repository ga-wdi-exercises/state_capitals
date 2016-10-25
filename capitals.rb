
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
 } {
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




 states = states.shuffle
puts "Time to study our state capitals!"


 states.each do |state|
   state[:correct] = 0
   state[:incorrect] = 0
 end


while true  #wanted to use until instead

 states.each_with_index do |state, index|
 states.each do |state|
      puts "What is the capital of " + state[:name] + "?"

      choice = gets.chomp

     if choice.upcase == state[:capital].upcase
       puts "That's right! Nice Job!"
       state[:correct] += 1
     else

       puts "That's not correct, the capital is #{state[:capital]}."
       state[:incorrect] += 1
     end

     total = state[:correct] + state[:incorrect]
     puts "You are #{state[:correct]} for #{total} on that."
   end
 end

   puts "Play again? (Yes/No)"
   choice = gets.chomp
   break if choice == "No"

   states = states.sort_by { |state|
     state[:correct]}

end
