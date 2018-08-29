class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.string :icon_url
      t.integer :course_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
