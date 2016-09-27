require 'pry'
test = [
  {
      name: "Delaware",
      capital: "Dover"
  }, {
      name: "Colorado",
      capital: "Denver"
  }, {
      name: "Arkansas",
      capital: "Little Rock"
  }
]

def initialize_questions questions
  questions.each do |question|
    if question[:correct] == nil
      question[:correct] = 0
    end
    if question[:wrong] == nil
      question[:wrong] = 0
    end
  end
  questions
end

def shuffle questions, play_count
  if play_count == 0
    questions.shuffle!
  else
    questions.sort! { |a,b| b[:wrong] - a[:wrong] }
  end
  questions
end

def play questions, score_data
  questions.each do |question|
    puts "What is the capital of #{question[:name]}?"
    answer = gets.chomp
    if answer == question[:capital]
      question[:correct] += 1
      score_data[:correct] += 1
      puts "Great job! You've gotten that one right #{question[:correct]} out of #{question[:correct] + question[:wrong]} times. Running score: #{score_date[:correct]} correct out of #{score_data[:correct] + score_data[:wrong]}."
    else
      question[:wrong] += 1
      score_data[:wrong] += 1
      puts "Ooooh, someone's a big dum dum! You've gotten that one wrong #{question[:wrong]} out of #{question[:correct] + question[:wrong]} times. Running score: #{score_date[:correct]} correct out of #{score_data[:correct] + score_data[:wrong]}."
    end
  end
  score_data[:play_count] += 1
  puts "You have played #{score_data[:play_count]} times with a total score of #{score_data[:correct]} correct / #{score_data[:correct] + score_data[:wrong]} total. Would you like to play again (y/n)?"
  play_again = gets.chomp
  if play_again == "y"
    questions = shuffle questions, score_data[:play_count]
    score_data = play questions, score_data
  end
  score_data
end

# welcome
puts "-------State Capitals Game-------"
puts "Are you ready (y/n)?"
input = gets
score_data = {play_count: 0, correct: 0, wrong: 0}
test = initialize_questions test
binding.pry
test = shuffle test, score_data[:play_count]
play test, score_data
puts "You played #{score_data[:play_count]} times with a total score of #{score_data[:correct]}/#{score_data[:correct] + score_data[:wrong]}. Goodbye!"

# loop through
  # put question
  # get answer
  # evaluate
  # update array
  # put right / wrong count for question

# put total score

# put play again

# different shuffle method


# an array of state hashes
states = [
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

binding.pry
puts 'done'
