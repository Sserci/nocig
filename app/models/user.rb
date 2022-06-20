class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :consumptions
  has_many :transactions
  validate :presence_age, :presence_gender, :presence_objective_amount, :presence_pot, :presence_iban
  validates :email, :first_name, :last_name, presence: true
  # validates :iban, format: { with: /FR\d{12}[A-Z0-9]{11}\d{2}/ }
  # validates :age, numericality: { only_integer: true, greater_than: 10 }
  # validates :gender, inclusion: { in: %w(Femme Homme Autre)}

  # objectives validate
  # validates :objective_amount, numericality: { only_integer: true, greater_than: 0 }
  # validates :objective_title, length: { maximum: 20 }

  # pots validates
  # validates :pot, numericality: { only_integer: true, greater_than: 0 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def presence_iban
    if iban? && !iban.match(/FR\d{12}[A-Z0-9]{11}\d{2}/)
      errors.add(:iban, "should be a valid iban")
    end
  end

  def presence_age
    if age?
      if !age.is_a?(Integer) || age < 10
        errors.add(:age, "should be an integer superior than 10")
      end
    end
  end

  def presence_gender
    genders = %w(Femme Homme Autre)
    if gender? && !genders.include?(gender)
      errors.add(:gender, "is not a valid gender")
    end
  end

  def presence_objective_amount
    if objective_amount?
      if !objective_amount.is_a?(Integer) || objective_amount < 1
        errors.add(:objective_amount, "should be an integer superior than 0")
      end
    end
  end

  def presence_pot
    if pot?
      if !pot.is_a?(Integer) || pot < 1
        errors.add(:pot, "should be an integer superior than 10")
      end
    end
  end
end
