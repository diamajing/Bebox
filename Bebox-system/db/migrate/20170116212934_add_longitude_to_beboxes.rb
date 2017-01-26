class AddLongitudeToBeboxes < ActiveRecord::Migration[5.0]
  def change
  	add_column :beboxes, :laltitude, :string, :default => '35.8293395'
  	add_column :beboxes, :longitude, :string, :default => '10.5854338'
  end
end
