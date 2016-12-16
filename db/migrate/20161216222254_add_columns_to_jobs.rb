class AddColumnsToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :name, :string
    add_column :jobs, :cost, :decimal
    add_column :jobs, :origin, :string
    add_column :jobs, :destination, :string
  end
end
