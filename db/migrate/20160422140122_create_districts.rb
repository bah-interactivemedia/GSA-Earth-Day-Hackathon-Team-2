class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.integer :cd
      t.string :name
      t.string :state

      t.timestamps null: false
    end
  end
end
