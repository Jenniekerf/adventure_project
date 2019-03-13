require "pry"
class AdventureProject::CLI 
  
 def call
   welcome
   goodbye
 end
 
 def welcome 
  puts "Welcome! Are you ready for an adventure? Enter Y or N"
   input = gets.strip.downcase
   if input == "y"
     list_options
   elsif input == "n" 
     exit_site
     goodbye
     exit
   else 
     puts "Y or N please!"
     welcome
   end
 end
 
 
 def list_options
   puts "Tell us how adventurous you are! Enter 1-3
   
   1. I like to lie on the beach and I tend to get scared easily.
   
   2. I love adventures and I'm up for anything!
   
   3. I'm done. Exit site"
   
   input = gets.strip.to_i
     if input == 1
      maybe_bye
     elsif input == 2
      puts "How about one of these bad boys?"
      your_trips
     elsif input == 3
      goodbye
      exit
     else
      puts "I don't understand that option, try again!" 
      your_trips
   end
 end
 
 
 def your_trips
   AdventureProject::Trips.all.map {|trip| trip.title }.flatten.map.with_index(1) {|t, i| puts "#{i} #{t}" }
    puts ""
    puts "Tell us which trip you would like to know more about!"
    input = gets.strip.to_i
    if input.between?(1,5)
    puts AdventureProject::Trips.all.map {|trip| trip.description }.flatten[input - 1]
    puts ""
    puts "Website for more info:"
    puts AdventureProject::Trips.all.map {|trip| trip.url }.flatten[input - 1]
  else
    puts "That's not an option. Try again."
    your_trips
  end
    puts ""
    puts "Would you like to see your other options? Enter Y or N"
    input = gets.strip.downcase 
      if input == "y"
        your_trips
      elsif input == "n"
        goodbye
        exit
      else 
      puts "I'm sorry, I didn't understand that.Enter Y or N please"
      input = gets.strip.downcase
        if input == "y"
          your_trips
        else
          goodbye
          exit
        end
      end
    end
    
 

 
 
 def exit_site
  puts "This site is not for you. Have fun on your next all inclusive beach trip!" 
 end
 
 def maybe_bye
   puts "This site might not be for you. Have fun on your next all inclusive beach trip or....face your fears and enter another option!" 
 end
 
 def goodbye
   puts "Thanks for stopping by!"
 end
 
 end
