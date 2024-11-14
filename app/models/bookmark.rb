class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # has_and_belongs_to_many :movies

  validates :comment, length: { minimum: 6 }
  validates :list_id, uniqueness: { scope: :movie_id }
end
