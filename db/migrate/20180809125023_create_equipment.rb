class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :vendor
      t.string :machine
      t.string :file_url

      t.timestamps
    end
  end
end
