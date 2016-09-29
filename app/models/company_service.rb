class CompanyService < ApplicationRecord
  belongs_to :service
  belongs_to :company

  Category = ["Under the hood", "Under the car", "Exterior and Perfomance"];
end
