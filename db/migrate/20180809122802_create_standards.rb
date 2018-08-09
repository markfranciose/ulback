class CreateStandards < ActiveRecord::Migration[5.2]
  def change
    create_table :standards do |t|
      t.string :standard_number
      t.string :title
      t.string :file_url

      t.timestamps
    end
  end
end
