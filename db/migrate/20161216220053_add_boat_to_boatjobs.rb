class AddBoatToBoatjobs < ActiveRecord::Migration[5.0]
  def change
    add_reference :boatjobs, :boat, foreign_key: true
  end
end
