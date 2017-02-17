class CreateBeboxes < ActiveRecord::Migration[5.0]
  def change
    create_table :beboxes do |t|
      t.string :reference
      t.string :location
      t.integer :category
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
