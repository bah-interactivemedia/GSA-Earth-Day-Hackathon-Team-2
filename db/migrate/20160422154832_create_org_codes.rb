class CreateOrgCodes < ActiveRecord::Migration
  def change
    create_table :org_codes do |t|
      t.integer :region
      t.string :region_name
      t.integer :forest
      t.string :forest_name
      t.integer :district
      t.string :district_name
      t.string :state

      t.timestamps null: false
    end
  end
end
