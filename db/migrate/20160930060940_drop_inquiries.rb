class DropInquiries < ActiveRecord::Migration[5.0]
  def change
    drop_table :inquiries
  end
end
