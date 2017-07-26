class Picture < ApplicationRecord
  validates :artist, :url, presence: true
  validates :title, length: { minimum: 3, maximum: 20 }
  validates :url, uniqueness: true

  has_many :comments
  has_and_belongs_to_many :tags
end
