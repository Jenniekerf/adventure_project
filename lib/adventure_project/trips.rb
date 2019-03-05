class AdventureProject::Trips

  attr_accessor :title, :description, :url



 def self.all
   self.scraped_trips
   end

  def self.scraped_trips
    trips = []
    trips << self.scraped_from_site
    trips
  end

  def self.scraped_from_site
    doc = Nokogiri::HTML(open("https://www.wanderlust.co.uk/content/11-of-the-best-trips-for-adrenaline-junkies/"))
    binding.pry
    title = doc.css("div.articleBodyContent h3").text
  end



  end


description1 = doc.css("div.articleBodyContent").text.split("  ")[1].split(".").drop(1).join 
