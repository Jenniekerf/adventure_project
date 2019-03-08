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
   input = nil
   while input != "exit"
   puts "Tell us how adventurous you are! Enter 1-4
   
   1. I like to lie on the beach and I tend to get scared easily.
   
   2. I love adventures and I'm up for anything!
   
   3. I'm done. Exit site"
   
   input = gets.strip.to_i
   case input
   when 1 
      maybe_bye
   when 2
     puts "How about any of these?"
     your_trips
      puts "Tell us which trip you would like to know more about!"
      input = gets.strip.to_i
      puts trip_info[input - 1]
      puts "Would you like to see your other options? Enter Y or N"
      input = gets.strip.downcase 
      if input == "y"
        your_trips
        elsif input == "n"
        goodbye
        exit
      else 
        puts "Y or N please!"
      end
      when 3
      goodbye
     exit
   else
   puts "I don't understand that option, try again!" 
    end
   end
 end
 
 
 def your_trips
   AdventureProject::Trips.all.each.with_index(1) do |trip, index|
     puts "#{index}.#{trip.title}"
 end
 end
 
 def trip_info
    info = []
  AdventureProject::Trips.all.each do |trip| 
     #binding.pry
     info << "#{trip.description} - #{trip.url}"
     end
     info
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
