class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :date_of_birth
      t.string :salary
      t.string :education
      t.string :subject

      t.timestamps
    end
  end
end
