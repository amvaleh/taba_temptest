class CreateBloomSeasons < ActiveRecord::Migration
  def change
    create_table :bloom_seasons do |t|
      t.string :name
      t.integer :plant_id
      t.integer :number

      t.timestamps null: false
    end
  end
end
