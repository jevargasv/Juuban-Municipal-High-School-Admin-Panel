class CreateTeachers < ActiveRecord::Migration[5.2]
  def up
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.date :date_of_birth
      t.string :email
      t.boolean :here
      t.boolean :fair
      t.integer :salary
      t.string :education
      t.string :subject
      t.integer :teacher_id
      t.integer :cohort_id
      t.integer :course_id

      t.timestamps
    end
  end

  def down
    drop_table :teachers
  end
end
