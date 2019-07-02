require 'net/http'

#Usando HTTP
#Simple with Example
                           #get(link/site, path(url))
example_simple = Net::HTTP.get('example.com', '/index.html')
#Caso não houver o arquivo example.html ele será criado, isso por conta do parâmetro 'w' = write
File.open('example.html', 'w') do |line|
  line.puts(example_simple)
end

example_google = Net::HTTP.get('www.google.com', '/')

File.open('google.html', 'w') do |line|
  line.puts(example_google)
end

#Usando HTTPS - get
#                     #new(site, porta(ssl = parte segura))
https = Net::HTTP.new('reqres.in', 443)
#Fazendo chamada HTTPS
https.use_ssl = true #Diz para utilizar https

response = https.get('/api/users')#fazendo a chamada
#status code - Sempre é bom ter cada requisição web
puts response.code
#status menssagem
puts response.message
#body (json)
puts response.body


req = Net::HTTP::Post.new('/api/users')
#para fazer chamadas utilizandp https
req.set_form_data({ name: 'Edward', job: 'Estagiário' })

response = Net::HTTP.start('reqres.in', use_ssl: true) do |https|
  https.request(req)
end

puts response.code + ' = ' + response.message
puts response.body