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
    title = doc.css("div.articleBodyContent h3").first.text
  end
    
    
  end
  



#stuff i scraped:
#title trip 1 : <span class="o-PhotoGalleryPromo__a-HeadlineText">Hike in Torres del Paine, Chilean Patagonia</span>
#description trip 1 : <div class="o-PhotoGalleryPromo__a-Description asset-description" 