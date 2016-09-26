class CreateInterventions < ActiveRecord::Migration[5.0]
  def change
    create_table :interventions do |t|
      t.string :action
      t.references :part, foreign_key: true
      t.references :maintenance, foreign_key: true

      t.timestamps
    end
  end
end
