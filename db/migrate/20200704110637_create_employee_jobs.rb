class CreateEmployeeJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_jobs do |t|
      t.integer :job_schedule_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
