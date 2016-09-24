class CreateMaintenances < ActiveRecord::Migration[5.0]
  def change
    create_table :maintenances do |t|
      t.integer :category
      t.references :bebox, foreign_key: true
      t.string :note

      t.timestamps
    end
  end
end
