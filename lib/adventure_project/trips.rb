class AdventureProject::Trips
  
  attr_accessor :title, :description, :url



 def self.all 
   puts "Trips we think you would enjoy:"
    trip_1 = self.new 
    trip_1.title = "Hike in Torres..."
    trip_1.description = "blabla"
    trip_1.url = "https://www.travelchannel.com/interests/outdoors-and-adventure/photos/adventures-for-the-thrill-seeker"
    trip_2 = self.new 
    trip_2.title = "Plunge from..."
    trip_2.description = "blabla"
    trip_2.url = "https://www.travelchannel.com/interests/outdoors-and-adventure/photos/adventures-for-the-thrill-seeker"
    
    [trip_1, trip_2]
    
  end
  
  
  
end