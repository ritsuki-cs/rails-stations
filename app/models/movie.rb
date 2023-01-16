class Movie < ApplicationRecord
  validates :name, presence: true, length: { maximum: 160 }
  validates :year, length: { maximum: 45 }
  validates :image_url, length: { maximum: 150 }
  validates :is_showing, inclusion: {in: [true, false]}
end