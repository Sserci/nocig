class Objective < ApplicationRecord
  belongs_to :user, through: :pots
end
