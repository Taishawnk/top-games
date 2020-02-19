class Scraper
def self.scrape_games
  url= "https://www.ign.com/lists/top-100-games"
  
  website = Nokogiri::HTML(open(url))
  section = website.css("artical.item")
  end
end 
