class Objective < ApplicationRecord
  belongs_to :user
  validates :title, :amount, :reaching_date, presence: true
  validates :amount, numericality: { only_integer: true, greater_than: 0 }
  validates :title, length: { maximum: 20 }
end
