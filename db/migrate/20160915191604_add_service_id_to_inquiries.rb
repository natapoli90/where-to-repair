class AddServiceIdToInquiries < ActiveRecord::Migration[5.0]
  def change
    add_column :inquiries, :service_id, :integer
    add_index  :inquiries, :service_id
  end
end
