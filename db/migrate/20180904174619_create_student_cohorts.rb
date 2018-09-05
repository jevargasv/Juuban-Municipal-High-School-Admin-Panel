class CreateStudentCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :student_cohorts do |t|
      t.references :cohort, index: true
      t.references :student, index: true

      t.timestamps
    end
  end
end
