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
    description = []
    
    title = doc.css("div.articleBodyContent h3").text
    description1 = doc.css("div.articleBodyContent").text.split("  ")[1].split(".").drop(1).join
    description2 = doc.css("div.articleBodyContent").text.split("  ")[11]
    description3 = doc.css("div.articleBodyContent").text.split("  ")[21]
    description4 = doc.css("div.articleBodyContent").text.split("  ")[31]
    description5 = doc.css("div.articleBodyContent").text.split("  ")[41]
    description6 = doc.css("div.articleBodyContent").text.split("  ")[52]
    description7 = doc.css("div.articleBodyContent").text.split("  ")[62]
    description8 = doc.css("div.articleBodyContent").text.split("  ")[70]
    description9 = doc.css("div.articleBodyContent").text.split("  ")[79]
    description10 = doc.css("div.articleBodyContent").text.split("  ")[90]
    description11 = doc.css("div.articleBodyContent").text.split("  ")[99]
  end



  end
