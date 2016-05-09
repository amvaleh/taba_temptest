class CreateEpidemics < ActiveRecord::Migration
  def change
    create_table :epidemics do |t|
      t.text :sign
      t.text :cause

      t.timestamps null: false
    end
  end
end
