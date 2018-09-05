class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :age, null: false
      t.string :date_of_birth, null: false
      t.string :salary, null: false
      t.string :education, null: false
      t.string :subject, null: false

      t.timestamps
    end
  end
end
