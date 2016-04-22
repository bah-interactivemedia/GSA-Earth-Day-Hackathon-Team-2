class CreateForests < ActiveRecord::Migration
  def change
    create_table :forests do |t|
      t.integer :cd
      t.string :name

      t.timestamps null: false
    end
  end
end
