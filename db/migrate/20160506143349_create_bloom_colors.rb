class CreateBloomColors < ActiveRecord::Migration
  def change
    create_table :bloom_colors do |t|
      t.string :name
      t.string :avatar

      t.timestamps null: false
    end
  end
end
