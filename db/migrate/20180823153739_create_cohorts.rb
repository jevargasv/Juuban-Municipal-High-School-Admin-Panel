class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name, null: false
      t.string :start_date, null: false
      t.string :end_date, null: false
      t.integer :course_id, null: false
      t.integer :teacher_id, null: false

      t.timestamps
    end
  end
end
