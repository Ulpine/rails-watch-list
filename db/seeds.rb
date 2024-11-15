require 'open-uri'
require 'json'

puts 'Cleaning'

Movie.destroy_all

puts 'Creating movies'

url = 'https://tmdb.lewagon.com/movie/top_rated'
movies_serialized = URI.parse(url).read
movies_list = JSON.parse(movies_serialized)

array = movies_list['results']
array.each do |movie|
  # movie['title']
  # movie['overview']
  # movie['poster_path']
  Movie.create(title: movie['title'], overview: movie['overview'], poster_url: "https://image.tmdb.org/t/p/w200#{movie['poster_path']}")
end

p Movie.all
