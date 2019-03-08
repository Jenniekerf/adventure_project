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
    trips << scraped_trip_6
    trips << scraped_trip_7
    trips << scraped_trip_8
    trips << scraped_trip_9
    trips << scraped_trip_10
    trips << scraped_trip_11
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
    
    def self.scraped_trip_6
      doc = Nokogiri::HTML(open("https://www.wanderlust.co.uk/content/11-of-the-best-trips-for-adrenaline-junkies/"))
      
    trip_6 = self.new 
    trip_6.title = doc.css("div.articleBodyContent h3").text.gsub!(/\d+/,"").split(".").drop(1)[5]
    trip_6.description = doc.css("div.articleBodyContent").text.split("  ")[52]
    trip_6.url = doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[24]
    trip_6
     
  end
    
    def self.scraped_trip_7
      doc = Nokogiri::HTML(open("https://www.wanderlust.co.uk/content/11-of-the-best-trips-for-adrenaline-junkies/"))
      
    trip_7 = self.new 
    trip_7.title = doc.css("div.articleBodyContent h3").text.gsub!(/\d+/,"").split(".").drop(1)[6]
    trip_7.description = doc.css("div.articleBodyContent").text.split("  ")[62]
    trip_7.url = doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[29]
    trip_7
     
  end
    
    def self.scraped_trip_8
      doc = Nokogiri::HTML(open("https://www.wanderlust.co.uk/content/11-of-the-best-trips-for-adrenaline-junkies/"))
      
    trip_8 = self.new 
    trip_8.title = doc.css("div.articleBodyContent h3").text.gsub!(/\d+/,"").split(".").drop(1)[7]
    trip_8.description = doc.css("div.articleBodyContent").text.split("  ")[70]
    trip_8.url = doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[33]
    trip_8
     
  end
    
    def self.scraped_trip_9
      doc = Nokogiri::HTML(open("https://www.wanderlust.co.uk/content/11-of-the-best-trips-for-adrenaline-junkies/"))
      
    trip_9 = self.new 
    trip_9.title = doc.css("div.articleBodyContent h3").text.gsub!(/\d+/,"").split(".").drop(1)[8]
    trip_9.description = doc.css("div.articleBodyContent").text.split("  ")[79]
    trip_9.url = doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[38]
    trip_9
     
  end
    
    def self.scraped_trip_10
      doc = Nokogiri::HTML(open("https://www.wanderlust.co.uk/content/11-of-the-best-trips-for-adrenaline-junkies/"))
      
    trip_10 = self.new 
    trip_10.title = doc.css("div.articleBodyContent h3").text.gsub!(/\d+/,"").split(".").drop(1)[9]
    trip_10.description = doc.css("div.articleBodyContent").text.split("  ")[90]
    trip_10.url = doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[42]
    trip_10
     
  end
    
    def self.scraped_trip_11
      doc = Nokogiri::HTML(open("https://www.wanderlust.co.uk/content/11-of-the-best-trips-for-adrenaline-junkies/"))
      
    trip_11 = self.new 
    trip_11.title = doc.css("div.articleBodyContent h3").text.gsub!(/\d+/,"").split(".").drop(1)[10]
    trip_11.description = doc.css("div.articleBodyContent").text.split("  ")[99]
    trip_11.url = doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[47]
    trip_11
     
  end
    
  

  end

  
  
  

  