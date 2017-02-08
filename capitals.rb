# an array of state hashes
require "pry"
#

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

states= states.shuffle

# score= 0
# number_incorrect= 0

puts "Welcome to the State Capitals Game! This is an interactive tool that will help you to memorize the state capitals of the US! \n"

  def run_game (states)

    score= 0
    number_incorrect= 0

    states.each do |state|
      puts "\nWhat is the capital of #{state[:name]}?"
      answer = gets.chomp

        if answer == state[:capital]
          puts "Yes, that is correct!"
          score +=1
          puts "You're score is: #{score} out of 50\n"

        else
          puts "Sorry that is incorrect"
          number_incorrect +=1
          puts "You're score is: #{score} out of 50\n"
          puts "Number incorrect : #{number_incorrect}"
        end
    end
# puts "Congrats you have finished the game. You scored #{score} out of 50 and got #{number_incorrect} incorrect. Would you like to play again? Y/N"
#
#       play_again= gets.chomp
#         if play_again == "Y"
#           #run game again
#         else
#           puts "Thanks for playing"
#         end
end

run_game(states)






binding.pry
