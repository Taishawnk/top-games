class CLI
  
  def start TopHundredGames::Scraper.new.make_games
      puts "--------------------------------"
      puts ""
      puts          "Top 100 games!!"
      puts ""
      puts "--------------------------------"
      start
    end
  
    def start
      puts ""
      puts "please enter a number from 1-100"
    #   input = gets.strip.to_i
  
    #   print_games(input)
  
    #   puts ""
    #   puts "What restaurant would you like more information on?"
    #   input = gets.strip
  
    #   restaurant = WorldsBestRestaurants::Restaurant.find(input.to_i)
  
      print_game(game)
  
      puts ""
      puts "Would you like to see another game? Enter e for enter or exit! to exit"
  
      input = gets.strip.downcase
      if input == "e"
        start
      elsif input == "exit"
        puts ""
        puts "Thank you! Have a great day!"
        exit
      else
        puts ""
        puts "Invalid Entry."
        start
      end
    end
  
    def print_game(game)
      puts ""
      puts "----------- #{game.game_name} - #{game.rank} -----------"
      puts ""
      puts "Head:               #{game.dateReleased}"
      puts "Website:            #{game.website_url}" #optional
      puts ""
      puts "---------------Description--------------"
      puts ""
      puts "#{game.description}"
      puts ""
    end
  
#     def print_games(from_number)
#       puts ""
#       puts "---------- games #{from_number} - #{from_number+9} ----------"
#       puts ""
#       WorldsBestgames::game.all[from_number-1, 10].each.with_index(from_number) do |game, index|
#         puts "#{index}. #{game.name} - #{game.location}"
#       end
#     end
  
#   end
      input = gets.strip.downcase
      if input == "e"
        start
      elsif input == "exit"
        puts ""
        puts "Thank you! Have a great day!"
        exit
      else
        puts ""
        puts "Invalid Entry."
        self.start
 end
  
    
  

