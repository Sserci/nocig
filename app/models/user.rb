class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :consumptions

  validates :email, :first_name, :last_name, presence: true
  validates :iban, format: {with: /FR\d{12}[A-Z0-9]{11}\d{2}/ }
  validates :age, numericality: { only_integer: true, greater_than: 10 }
  validates :gender, inclusion: { in: %w(Femme Homme Autre)}

  # objectives validate
  validates :title, :amount, :reaching_date, presence: true
  validates :amount, numericality: { only_integer: true, greater_than: 0 }
  validates :title, length: { maximum: 20 }

  # pots validates
  validates :amount, presence: true
  validates :amount, numericality: { only_integer: true, greater_than: 0 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
