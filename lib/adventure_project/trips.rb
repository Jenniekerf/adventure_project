class AdventureProject::Trips
  
  attr_accessor :title, :description, :url



 def self.all 
   
   self.scraped_trips
   
  end
  
  def self.scraped_from_site
    
    trips = []
    
    trips << self.scrape_trips
    
  
  def self.scrape_trips 
    doc = Nokogiri::HTML(open("https://travelchannel.com"))
  end
    
    trips
    
  end
  
  
  
end



#stuff i scraped:
#title trip 1 : <span class="o-PhotoGalleryPromo__a-HeadlineText">Hike in Torres del Paine, Chilean Patagonia</span>
#description trip 1 : <div class="o-PhotoGalleryPromo__a-Description asset-description" 