class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.string :customer_name
      t.string :telephone
      t.string :location
      t.string :report

      t.timestamps
    end
  end
end
