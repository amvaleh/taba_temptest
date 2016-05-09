class CreatePropagations < ActiveRecord::Migration
  def change
    create_table :propagations do |t|
      t.string :name
      t.text :explain

      t.timestamps null: false
    end
  end
end
