class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :date_of_birth
      t.string :year
      t.string :photo_url
      t.string :email
      t.boolean :good

      t.timestamps
    end
  end
end
