class CreateTeachers < ActiveRecord::Migration[5.2]
  def up
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :date_of_birth
      t.string :photo_url
      t.string :email
      t.boolean :fair
      t.integer :salary
      t.string :education
      t.string :subject
      t.references :cohort

      t.timestamps
    end
  end

  def down
    drop_table :teachers
  end
end
