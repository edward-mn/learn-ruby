require 'nokogiri' #Navegar e manipular em arquivos da estrutura .html
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443)
#Fazendo chamada através do https
https.use_ssl = true

response = https.get("/")

doc = Nokogiri::HTML(response.body)

h1 = doc.at('h1')
puts h1.content #Monstra somente o conteúdo

last_post = doc.at('h3 a') #Estamos dizendo para pegar a tag 'a' que se econtra dentro da h3
puts last_post.content
puts last_post['href'] #Estamos mandando imprimir o link que se encontra lá

doc.search('h3 a').each do |a| #Exibindo mais de uma informação, interando dentro do h3 a
  puts a.content
  puts a['href']
  puts ''
end