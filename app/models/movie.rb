class Movie < ApplicationRecord
  has_many :bookmarks

  has_many :lists, through: :bookmarks

  validates :title, uniqueness: true, length: { minimum: 1 }
  validates :overview, length: { minimum: 1 }
end
