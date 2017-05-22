correct = 0
incorrect = 0

puts "Welcome to the craziest state capitals game...EVER!"

states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]

capitals = ["Montgomery", "Juneau", "Phoenix", "Little Rock", "Sacramento", "Denver", "Hartford", "Dover", "Tallahassee", "Atlanta", "Honolulu", "Boise", "Springfield", "Indianapolis", "Des Moines", "Topeka", "Frankfort", "Baton Rouge", "Augusta", "Annapolis", "Boston", "Lansing", "St. Paul", "Jackson", "Jefferson City", "Helena", "Lincoln", "Carson City", "Concord", "Trenton", "Santa Fe", "Albany", "Raleigh", "Bismarck", "Columbus", "Oklahoma City", "Salem", "Harrisburg", "Providence", "Columbia", "Pierre", "Nashville", "Austin", "Salt Lake City", "Montpelier", "Richmond", "Olympia", "Charleston", "Madison", "Cheyenne"]

def check_finish(states,capitals,correct,incorrect)
if correct + incorrect == 50
  puts "Want to play again? (y/n)"
  play_again = gets.chomp
end
if play_again = "y"
  start_game(states,capitals,correct,incorrect)
  end
end
#SET this back to desired match length at end

def start_game(states,capitals,correct,incorrect)
50.times do
    question = rand(0..50)
      puts "what is the Capitol of " + states[question]
    answer = gets.chomp
    if answer == capitals[question]
  	   puts "You ROCKSTAR!"
       correct += 1
       puts "You have #{correct} correct answer(s) so far - and #{incorrect} incorrect answer(s)"
       check_finish(states,capitals,correct,incorrect)
    else
  	   puts "Learn our map... you UNPATRIOT!"
       incorrect +=1
       puts "You have #{incorrect} incorrect answer(s) so far - and #{correct} correct answer(s)"
       check_finish(states,capitals,correct,incorrect)
    end
  end
end

start_game(states,capitals,correct,incorrect)
