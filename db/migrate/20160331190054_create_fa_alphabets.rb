class CreateFaAlphabets < ActiveRecord::Migration
  def change
    create_table :fa_alphabets do |t|
      t.string :name
      t.string :value

      t.timestamps null: false
    end
  end
end
