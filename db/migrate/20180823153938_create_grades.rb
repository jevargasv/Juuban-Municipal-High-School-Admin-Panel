class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.boolean :pass
      t.integer :cohort_id
      t.integer :student_id

      t.timestamps
    end
  end
end
