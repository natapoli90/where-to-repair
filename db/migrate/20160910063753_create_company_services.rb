class CreateCompanyServices < ActiveRecord::Migration[5.0]
  def change
    create_table :company_services do |t|
      t.belongs_to :services, foreign_key: true
      t.belongs_to :companies, foreign_key: true
    end
  end
end
