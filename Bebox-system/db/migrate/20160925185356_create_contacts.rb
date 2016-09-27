class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :surname
      t.string :company
      t.string :email
      t.string :Telephone
      t.string :message

      t.timestamps
    end
  end
end
