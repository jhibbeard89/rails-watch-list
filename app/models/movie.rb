class Movie < ApplicationRecord
  has_many :Bookmarks

  validates :title, :overview, presence: true
  validates :overview, length: { minimum: 6 }
  validates :title, uniqueness: true
end
