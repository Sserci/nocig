class Motivation < ApplicationRecord
  validates :title, :content, :category_name, presence: true
end
