class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :here
      t.integer :course_id
      t.integer :cohort_id
      t.integer :student_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
