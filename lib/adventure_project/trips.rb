class AdventureProject::Trips

  attr_accessor :title, :description, :url
  
  

 def self.all
   self.scraped_trips
   end

  def self.scraped_trips
    trips = []
    trips << scraped_trips
    trips 
     
   end
  
  def self.scraped_trips
    
    doc = Nokogiri::HTML(open("https://www.wanderlust.co.uk/content/11-of-the-best-trips-for-adrenaline-junkies/"))
     
    trip_info = []
    trip_info << [doc.css("div.articleBodyContent").text.split("  ")[1], doc.css("div.articleBodyContent").text.split("  ")[11], doc.css("div.articleBodyContent").text.split("  ")[21], doc.css("div.articleBodyContent").text.split("  ")[31], doc.css("div.articleBodyContent").text.split("  ")[41], doc.css("div.articleBodyContent").text.split("  ")[52], doc.css("div.articleBodyContent").text.split("  ")[62], doc.css("div.articleBodyContent").text.split("  ")[70], doc.css("div.articleBodyContent").text.split("  ")[79], doc.css("div.articleBodyContent").text.split("  ")[90], doc.css("div.articleBodyContent").text.split("  ")[99]]
    trip_info
    
    trip_sites = []
    trip_sites << [doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[1], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[5], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[10], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[14], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[19], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[24], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[29], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[33], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[38], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[42], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[47]]
    trip_sites
    
    
    
    trip = self.new 
    trip.title = doc.css("div.articleBodyContent h3").text.gsub!(/\d+/,"").split(".").drop(1)
    trip.description = trip_info.map { |info| info }.flatten
    trip.url = trip_sites.each { |url| url }.flatten
    trip
  end
  
  
    
    
  end

  
  
  

  