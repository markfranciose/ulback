class CreateOperatingProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :operating_procedures do |t|
      t.string :op_number
      t.string :title
      t.string :file_url

      t.timestamps
    end
  end
end
