require 'rubygems'
require 'nokogiri'
require 'open-uri'

# html1 = open("http://flatironschool.com")
# doc1 = Nokogiri::HTML(html1)
# puts doc1

# doc2 = Nokogiri::HTML(open("http://flatironschool.com"))
# puts doc2.css(".grey-text")[0].text
# puts doc2.css("span[style='color:#14b3d9;']").text
# # => Master Web Development at Home 

# puts doc2.css(".grey-text")
# # => <span style="color:#14b3d9;" class="grey-text">Master Web Development at Home</span>
# # => <span class="grey-text">Join our state-of-the-art online campus.</span>
# # => <span class="grey-text">Free Full-Access Trial.</span>

# puts doc2.xpath('//span[@style="color:#14b3d9;"]').text
# => Master Web Development at Home

html2 = open("http://flatironschool.com/team")
doc3 = Nokogiri::HTML(html2)

instructors = doc3.css("#instructors")
# puts instructors.css("h2")[0].text
instructors.css("h2").each do |i|
    puts "Flatiron School <3 #{i.text}"
end
