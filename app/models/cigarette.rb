class Cigarette < ApplicationRecord
  has_many :consumptions
  validates :brand, :price, presence: true
end
