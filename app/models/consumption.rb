class Consumption < ApplicationRecord
  belongs_to :cigarette
  belongs_to :user
end
