class CreateMaintenances < ActiveRecord::Migration[5.2]
  def change
    create_table :maintenances do |t|
      t.string :maintenance_date
      t.string :machine
      t.string :file_url

      t.timestamps
    end
  end
end
