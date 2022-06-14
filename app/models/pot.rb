class Pot < ApplicationRecord
  belongs_to :user
  validates :amount, presence: true
  validates :amount, numericality: { only_integer: true, greater_than: 0 }
end
