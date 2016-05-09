class CreatePests < ActiveRecord::Migration
  def change
    create_table :pests do |t|
      t.string :name
      t.text :cause
      t.text :treatment
      t.text :avatars

      t.timestamps null: false
    end
  end
end
