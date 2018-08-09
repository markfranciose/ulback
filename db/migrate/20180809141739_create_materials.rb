class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :material_type
      t.string :vendor
      t.string :process
      t.string :file_url

      t.timestamps
    end
  end
end
