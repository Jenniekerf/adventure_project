class AdventureProject::Trips 
  attr_accessor :title, :description
  #@@all = [] #should have all the different trips 
  
  def self.all 
    puts "All the trips"
    trip_1 = self.new 
    trip_1.title = "Hike in Torres..."
    trip_1.description = "blabla"
    trip_1.url = "https://www.travelchannel.com/interests/outdoors-and-adventure/photos/adventures-for-the-thrill-seeker"
    trip_2 = self.new 
    trip_2.title = "Plunge from..."
    trip_2.description = "blabla"
    trip_2.url = "https://www.travelchannel.com/interests/outdoors-and-adventure/photos/adventures-for-the-thrill-seeker"
    trip_3 = self.new 
    trip_3.title = "Ultralight Flight..."
    trip_3.description = "blabla"
    trip_3.url = "https://www.travelchannel.com/interests/outdoors-and-adventure/photos/adventures-for-the-thrill-seeker"
    trip_4 = self.new 
    trip_4.title = "Bike the World's..."
    trip_4.description = "blabla"
    trip_4.url = "https://www.travelchannel.com/interests/outdoors-and-adventure/photos/adventures-for-the-thrill-seeker"
    trip_5 = self.new 
    trip_5.title = "Scuba Dive..."
    trip_5.description = "blabla"
    trip_5.url = "https://www.travelchannel.com/interests/outdoors-and-adventure/photos/adventures-for-the-thrill-seeker"
    trip_6 = self.new 
    trip_6.title = "Walk the Great..."
    trip_6.description = "blabla"
    trip_6.url = "https://www.travelchannel.com/interests/outdoors-and-adventure/photos/adventures-for-the-thrill-seeker"
    trip_7 = self.new 
    trip_7.title = "Get your heart..."
    trip_7.description = "blabla"
    trip_7.url = "https://www.travelchannel.com/interests/outdoors-and-adventure/photos/adventures-for-the-thrill-seeker"
    trip_8 = self.new 
    trip_8.title = "Sandboard..."
    trip_8.description = "blabla"
    trip_8.url = "https://www.travelchannel.com/interests/outdoors-and-adventure/photos/adventures-for-the-thrill-seeker"
    trip_9 = self.new 
    trip_9.title = "Stay in the..."
    trip_9.description = "blabla"
    trip_9.url = "https://www.travelchannel.com/interests/outdoors-and-adventure/photos/adventures-for-the-thrill-seeker"
    trip_10 = self.new 
    trip_10.title = "Swing at the..."
    trip_10.description = "blabla"
    trip_10.url = "https://www.travelchannel.com/interests/outdoors-and-adventure/photos/adventures-for-the-thrill-seeker"
  end
  
end