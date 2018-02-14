class Movie < ActiveRecord::Base
	def self.all_ratings
		array_movies = self.all
		all_ratings = []
		array_movies.each do |m|
			all_ratings.push(m.rating)
		end
		all_ratings.uniq
	end
end
