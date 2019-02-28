
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
   1. I like to sun bathe and I tend to get scared easily. 
   2. I love adventures but I have bad knees so I can't do anything too crazy. 
   3. Bring it on! I'm a crazy adrenaline junkie!
   4. I'm done. Exit site"
   input = gets.strip.to_i
   case input
   when 1 
      maybe_bye
   when 2 
   list_of_trips
   when 3 
   list_of_trips
   when 4
     goodbye
     exit
   else
   puts "I don't understand that option, try again!" 
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
 
 def list_of_trips
   list_of_trips = AdventureProject::Trips.all
 end
 
 
 end
