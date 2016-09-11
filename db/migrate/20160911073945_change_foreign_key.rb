class ChangeForeignKey < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :company_services, :services
    add_foreign_key :company_services, :services, on_delete: :cascade
  end
end
