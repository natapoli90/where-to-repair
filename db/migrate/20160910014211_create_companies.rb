class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone
      t.string :email
      t.string :image_url

      t.timestamps
    end
  end
end
