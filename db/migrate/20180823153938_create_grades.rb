class CreateGrades < ActiveRecord::Migration[5.2]
  def up
    create_table :grades do |t|
      t.integer :grade
      t.boolean :pass
      t.integer :student_id
      t.integer :teacher_id
      t.integer :cohort_id
      t.integer :course_id

      t.timestamps
    end
  end

  def down
    drop_table :grades
  end
end
