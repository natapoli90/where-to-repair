class ChangeColumnNameInInquiries < ActiveRecord::Migration[5.0]
  def change
    rename_column :inquiries, :car_maodel, :car_model
  end
end
