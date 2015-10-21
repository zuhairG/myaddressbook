class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :home_phone
      t.string :work_phone
      t.string :mobile
      t.string :email
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
