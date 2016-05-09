class CreateSoils < ActiveRecord::Migration
  def change
    create_table :soils do |t|
      t.string :name
      t.text :explain

      t.timestamps null: false
    end
  end
end
