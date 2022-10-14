require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all"))  
    crypto_name = page.xpath('//td[contains(@class,"symbol")]')
    crypto_price = page.xpath('//td[contains(@class,"price")]')

@list = crypto_name.zip( crypto_price )

@list.each do |crypto_name,crypto_price|
     p "#{crypto_name.text} <#{crypto_price.text}>"
end
