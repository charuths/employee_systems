class CreateEmployeeAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_addresses do |t|
      t.string :adress_line_1
      t.string :address_line_2
      t.integer :postal_code

      t.timestamps
    end
  end
end
