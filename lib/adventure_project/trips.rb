class AdventureProject::Trips

  attr_accessor :title, :description, :url



 def self.all
   self.scraped_trips
   end

  def self.scraped_trips
    trips = []
    trips << scraped_trip_1
    trips << scraped_trip_2
    trips << scraped_trip_3
    trips << scraped_trip_4
    trips << scraped_trip_5
    
    trips
  end
  
  def self.scraped_trip_1
    doc = Nokogiri::HTML(open("https://www.wanderlust.co.uk/content/11-of-the-best-trips-for-adrenaline-junkies/"))
    
    trip_1 = self.new 
    trip_1.title = doc.css("div.articleBodyContent h3").text.gsub!(/\d+/,"").split(".").drop(1)[0]
    trip_1.description = doc.css("div.articleBodyContent").text.split("  ")[1]
    trip_1.url = doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[1]
    trip_1
  end
  
  def self.scraped_trip_2
    doc = Nokogiri::HTML(open("https://www.wanderlust.co.uk/content/11-of-the-best-trips-for-adrenaline-junkies/"))
    
    trip_2 = self.new 
    trip_2.title = doc.css("div.articleBodyContent h3").text.gsub!(/\d+/,"").split(".").drop(1)[1]
    trip_2.description = doc.css("div.articleBodyContent").text.split("  ")[11]
    trip_2.url = doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[5]
    trip_2
  end
    
    def self.scraped_trip_3
    doc = Nokogiri::HTML(open("https://www.wanderlust.co.uk/content/11-of-the-best-trips-for-adrenaline-junkies/"))
     
    trip_3 = self.new 
    trip_3.title = doc.css("div.articleBodyContent h3").text.gsub!(/\d+/,"").split(".").drop(1)[2]
    trip_3.description = doc.css("div.articleBodyContent").text.split("  ")[21]
    trip_3.url = doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[10]
    trip_3
  end
    
    def self.scraped_trip_4
      doc = Nokogiri::HTML(open("https://www.wanderlust.co.uk/content/11-of-the-best-trips-for-adrenaline-junkies/"))
      
    trip_4 = self.new 
    trip_4.title = doc.css("div.articleBodyContent h3").text.gsub!(/\d+/,"").split(".").drop(1)[3]
    trip_4.description = doc.css("div.articleBodyContent").text.split("  ")[31]
    trip_4.url = doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[14]
    trip_4
     
  end
    
    def self.scraped_trip_5
      doc = Nokogiri::HTML(open("https://www.wanderlust.co.uk/content/11-of-the-best-trips-for-adrenaline-junkies/"))
      
    trip_5 = self.new 
    trip_5.title = doc.css("div.articleBodyContent h3").text.gsub!(/\d+/,"").split(".").drop(1)[4]
    trip_5.description = doc.css("div.articleBodyContent").text.split("  ")[41]
    trip_5.url = doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[19]
    trip_5
     
  end
  
  #trip_descriptions = [doc.css("div.articleBodyContent").text.split("  ")[1], doc.css("div.articleBodyContent").text.split("  ")[11], doc.css("div.articleBodyContent").text.split("  ")[21], doc.css("div.articleBodyContent").text.split("  ")[31], doc.css("div.articleBodyContent").text.split("  ")[41]]
  
  #trip_urls = [doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[1], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[5], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[10], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[14], doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[19]]
    
    
  end

  
  
  

  