class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.boolean :pass
      t.references :cohort, index: true
      t.references :student, index: true

      t.timestamps
    end
  end
end
