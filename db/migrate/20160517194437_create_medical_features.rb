class CreateMedicalFeatures < ActiveRecord::Migration
  def change
    create_table :medical_features do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
