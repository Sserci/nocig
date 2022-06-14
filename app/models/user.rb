class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :consumptions
  has_many :pots
  has_many :objectives, through: :pots
  validates :email, :first_name, :last_name, presence: true
  validates :iban, format: {with: /FR\d{12}[A-Z0-9]{11}\d{2}/ }
  validates :age, numericality: { only_integer: true, greater_than: 10 }
  validates :gender, inclusion: { in: %w(Femme Homme Autre)}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
