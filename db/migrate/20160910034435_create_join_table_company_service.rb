class CreateJoinTableCompanyService < ActiveRecord::Migration[5.0]
  def change
    create_join_table :comapnies, :services do |t|
      t.index [:comapny_id, :service_id]
      t.index [:service_id, :comapny_id]
    end
  end
end
