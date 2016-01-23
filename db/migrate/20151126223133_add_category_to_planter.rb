class AddCategoryToPlanter < ActiveRecord::Migration
  def change

  	remove_column :planters , :second_name

    add_column :planters, :category, :string
    add_column :planters, :family, :string
    add_column :planters, :explanation, :text
    add_column :planters, :types, :text
    add_column :planters, :soil, :text
    add_column :planters, :usage, :text
    add_column :planters, :note, :text
  end
end
