class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.string :company
      t.string :email

      t.timestamps null: false
    end
  end
end
