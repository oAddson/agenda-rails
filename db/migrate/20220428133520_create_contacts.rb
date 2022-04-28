class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :address
      t.string :site
      t.text :description

      t.timestamps
    end
  end
end
