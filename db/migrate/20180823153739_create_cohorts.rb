class CreateCohorts < ActiveRecord::Migration[5.2]
  def up
    create_table :cohorts do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.string :icon_url
      t.references :course
      t.references :teacher
      t.references :grade

      t.timestamps
    end
  end
  def down
    drop_table :cohorts
  end
end
