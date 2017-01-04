class AddColumnsToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :description, :string
    add_column :jobs, :containers, :integer
  end
end
