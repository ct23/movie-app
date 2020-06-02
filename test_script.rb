require 'http'

puts "\nAll movies:"
puts response = HTTP.get('http://localhost:3000/api/movies')

puts "\nMovie id 2:"
puts response = HTTP.get('http://localhost:3000/api/movies/2')
