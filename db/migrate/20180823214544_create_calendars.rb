class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.string :name
      t.string :location
      t.date :start_date
      t.date :end_date
      t.integer :cohort_id
      t.integer :course_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
