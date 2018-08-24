class CreateHonorRolls < ActiveRecord::Migration[5.2]
  def change
    create_table :honor_rolls do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :good
      t.boolean :pass
      t.integer :grade
      t.integer :student_id
      t.integer :cohort_id


      t.timestamps
    end
  end
end
