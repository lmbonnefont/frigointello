require 'open-uri'
require 'nokogiri'

if Ingredient.all == []
  ("A".."Z").to_a.each do |letter|
    url = "http://www.marmiton.org/recettes/recettes-index.aspx?letter=#{letter}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('.m-lsting-ing li').each do |element|
      ingredient = Ingredient.create!(name: element.text.strip)
      p ingredient
    end
  end
end
