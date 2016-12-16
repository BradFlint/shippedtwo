class CreateBoatjobs < ActiveRecord::Migration[5.0]
  def change
    create_table :boatjobs do |t|

      t.timestamps
    end
  end
end
