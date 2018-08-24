class CreateCourses < ActiveRecord::Migration[5.2]
  def up
    create_table :courses do |t|
      t.string :name
      t.string :location
      t.integer :exact_hours
      t.integer :course_id
      t.integer :cohort_id
      t.integer :teacher_id

      t.timestamps
    end
  end

  def down
    drop_table :courses
  end
end
