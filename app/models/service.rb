class Service < ApplicationRecord
  has_many :company_services
  has_many :companies, through: :company_services

  validates :name, presence: true, length: { in: 2..50 }
  validates :category, presence: true, length: { in: 2..50  }
end
