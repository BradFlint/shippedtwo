class BoatjobsController < ApplicationController
	def create
		@boat = Boat.find(params[:boat_id])
    	@job = Job.find(params[:job_id])
		@job.boats << @boat
	end
end
