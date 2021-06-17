class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_uniqueness_of :movie_id, scope: :list_id
  validates_length_of :comment, minimum: 6

  def self.find_by_movie_and_list(movie, list)
    Bookmark.find_by(list: list, movie: movie)
  end
end
