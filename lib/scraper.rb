class Scraper

  def self.scrape_adoptable_pets(animal)
    pets = []
    doc = Nokogiri::HTML(open(https://www.vrcpitbull.com/dogs/"))
    doc.css("div.rg-animal").each do |pet|
      pet_details = {}
      pet_details[:species] = animal
      pet_details[:name] = pet.css("span.animalName").text
      pet_details[:breed] = pet.css("span.animalBreed").text
      pet_details[:age] = pet.css("span.animalAge").text
      pet_details[:url] = pet.css("a").attribute("href").value
      pets << pet_details
    end
    pets
  end
  
  