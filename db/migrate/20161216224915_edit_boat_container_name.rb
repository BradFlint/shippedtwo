class EditBoatContainerName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :boats, container: :containers
  end
end
