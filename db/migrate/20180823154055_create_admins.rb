class CreateAdmins < ActiveRecord::Migration[5.2]
  def up
    create_table :admins do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo_url
      t.string :email
      t.references :admin

      t.timestamps
    end
  end

  def down
    drop_table :admins
  end
end
