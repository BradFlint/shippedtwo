class AddJobToBoatjobs < ActiveRecord::Migration[5.0]
  def change
    add_reference :boatjobs, :job, foreign_key: true
  end
end
