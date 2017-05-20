class AddAntennaToRecords < ActiveRecord::Migration
  def change
    add_column :records, :antenna, :string
  end
end
