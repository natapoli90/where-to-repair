class RemoveTypeFromService < ActiveRecord::Migration[5.0]
  def change
    remove_column :services, :type, :string
  end
end
