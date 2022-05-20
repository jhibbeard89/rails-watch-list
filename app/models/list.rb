class List < ApplicationRecord
  has_many :Bookmarks, dependent: :delete_all
  has_many :Movies, through: :Bookmarks

  validates :name, uniqueness: true
end
