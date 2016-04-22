class CreateZipCodeClimateZones < ActiveRecord::Migration
  def change
    create_table :zip_code_climate_zones do |t|
      t.string :zip
      t.string :state
      t.string :county
      t.string :city_town
      t.integer :climate_zone
      t.string :moisture_regime

      t.timestamps null: false
    end
  end
end
