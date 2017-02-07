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


# an array of state hashes


# states = states.shuffle

puts "Hello do you know your states and capitals? Just note your score will be
counted based on every correct answer. You will also lose points for every incorrect
response. Please use CAPITALIZATION! "

states = states.shuffle
score_var = 0
#
states.each do |state|
  state[:num_right] = 0
  state[:num_wrong] = 0
end



# i = 0
# while i < 5 do
#    puts i
#    i += 1
# end

  #
    while true
      #Ask the user to name the capital of each state.
      states.each do |state|
        puts "What is the capital of " + state[:name] + "?"

        response = gets.chomp

        if response.upcase == state[:capital].upcase
          puts "correct, you got it right!"
          score_var += 1
          puts "Here is your score #{score_var}"
        else
          puts "this is not correct"
          score_var -=1
          puts "Here is your score #{score_var}"
        end
        if response.upcase == 
      end
    end
