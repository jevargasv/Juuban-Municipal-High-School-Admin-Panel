class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.references :course, index: true
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
