class Company < ApplicationRecord
  has_many :company_services, dependent: :destroy
  has_many :services, through: :company_services

  validates :name, length: {in: 2..100}, presence: true
  validates :address, length: {in: 2..100}, presence: true
  validates :city, length: {in: 2..100}, presence: true

  PHONE_REGEX = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/

  validates :phone,
    presence: true,
    format: { with: PHONE_REGEX},
    length: { maximum: 20 }

    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

    validates :email,
      presence: true,
      format: { with: EMAIL_REGEX},
      length: { maximum: 50 },
      uniqueness: { case_sensitive: false }
end
