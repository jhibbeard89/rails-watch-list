require 'json'
require 'open-uri'

url = "https://tmdb.lewagon.com/movie/top_rated"

movies_seriaized = URI.open(url).read
movies = JSON.parse(movies_seriaized)
movie_image = "https://image.tmdb.org/t/p/original"

movies['results'].each do |m|
  Movie.create(title: m['title'], overview: m['overview'], poster_url: "#{movie_image}#{m['poster_path']}", rating: m['vote_average'])
end
