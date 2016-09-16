class CreateInquiries < ActiveRecord::Migration[5.0]
  def change
    create_table :inquiries do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :car_make
      t.string :car_maodel
      t.string :car_year
      t.string :message

      t.timestamps
    end
  end
end
