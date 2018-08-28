class CreateGrades < ActiveRecord::Migration[5.2]
  def up
    create_table :grades do |t|
      t.boolean :pass
      t.references :student
      t.references :cohort

      t.timestamps
    end
  end

  def down
    drop_table :grades
  end
end
