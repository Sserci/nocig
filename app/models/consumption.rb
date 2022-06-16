class Consumption < ApplicationRecord
  belongs_to :cigarette
  belongs_to :user
  # validates :quantity, :date,  presence: true
  # validates :quantity, numericality: { only_integer: true, greater_than: 0 }
end
