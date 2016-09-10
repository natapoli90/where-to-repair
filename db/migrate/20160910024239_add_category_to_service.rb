class AddCategoryToService < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :category, :string
  end
end
