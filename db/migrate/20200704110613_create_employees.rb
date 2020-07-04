class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.datetime :date_of_birth
      t.string :gender
      t.string :marital_status

      t.timestamps
    end
  end
end
