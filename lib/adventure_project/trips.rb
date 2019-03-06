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
    description << doc.css("div.articleBodyContent").text.split("  ")[1]
    description << doc.css("div.articleBodyContent").text.split("  ")[11]
    description << doc.css("div.articleBodyContent").text.split("  ")[21]
    description << doc.css("div.articleBodyContent").text.split("  ")[31]
    description << doc.css("div.articleBodyContent").text.split("  ")[41]
    description << doc.css("div.articleBodyContent").text.split("  ")[52]
    description << doc.css("div.articleBodyContent").text.split("  ")[62]
    description << doc.css("div.articleBodyContent").text.split("  ")[70]
    description << doc.css("div.articleBodyContent").text.split("  ")[79]
    description << doc.css("div.articleBodyContent").text.split("  ")[90]
    description << doc.css("div.articleBodyContent").text.split("  ")[99]
    title = doc.css("div.articleBodyContent h3").text.gsub!(/\d+/,"").split(".")
    url = []
    url << doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[1]
    url << doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[5]
    url << doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[10]
    url << doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[14]
    url << doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[19]
    url << doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[24]
    url << doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[29]
    url << doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[33]
    url << doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[38]
    url << doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[42]
    url << doc.css('div.articleBodyContent strong a').map { |link| link['href'] }[47]
  end



  end
