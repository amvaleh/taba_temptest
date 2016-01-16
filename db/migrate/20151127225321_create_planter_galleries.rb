class CreatePlanterGalleries < ActiveRecord::Migration
  def change
    create_table :planter_galleries do |t|
      t.integer :planter_id
      t.string :avatar

      t.timestamps null: false
    end
  end
end
