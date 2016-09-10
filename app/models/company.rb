class Company < ApplicationRecord
  has_many :company_services, dependent: :destroy
  has_many :services, through: :company_services
end
