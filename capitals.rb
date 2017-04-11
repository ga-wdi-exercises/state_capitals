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
}].shuffle

# testArray = [
# {
#     name: "Alabama",
#     capital: "Montgomery"
# }, {
#     name: "Alaska",
#     capital: "Juneau"
# }, {
#     name: "Arizona",
#     capital: "Phoenix"
# }].shuffle

def add_answer_bank(obj)
  obj[:correct] = 0
  obj[:wrong] = 0
end

states.each do |hsh|
  add_answer_bank(hsh)
end

total_correct = 0
total_questions = 0

loop do
  states.each do |hsh|
    total_questions += 1
    puts "\n******************************************"
    puts "What is the capital of #{hsh[:name]}? (hint)"
    answer = gets.chomp
    if answer.downcase == 'hint'
      puts "Your hint is #{hsh[:capital][0, 3]}"
      answer = gets.chomp

      if answer.downcase == hsh[:capital].downcase
        puts "You are correct."
        hsh[:correct] = 1
        total_correct += 1
        break
      else
        puts "You are wrong."
        hsh[:wrong] = 1
      end

    elsif answer.downcase == hsh[:capital].downcase
      puts "You are correct."
      hsh[:correct] = 1
      total_correct += 1
    else
      puts "You are wrong."
      hsh[:wrong] = 1
    end
    answer = gets.chomp

    puts "You have answered #{total_correct} of #{total_questions}"
  end

  puts "Would you like to play again? (yes/no)"
  answer = gets.chomp
  break if answer != 'yes'
end
