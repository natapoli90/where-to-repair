class CompanyService < ApplicationRecord
  belongs_to :service
  belongs_to :company

  Category = ["Under the hood", "Under the car", "Exterior and Perfomance"];
  Name = ["Services 1", "Services 2", "Services 3"];
end
