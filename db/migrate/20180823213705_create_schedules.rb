class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :name
      t.string :location
      t.integer :exact_hours
      t.integer :course_id
      t.integer :cohort_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
