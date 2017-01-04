class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def edit
  end

  def show
    @boats = Boat.all
  end

  def create
    @boat = current_user.boats.new(boat_params)
    if @boat.save
        redirect_to root_path
    else
      render "new"
    end
  end

  def update
  end

  def destroy
  end

  private
  def boat_params
      params.require(:boat).permit(:user_id, :name, :containers, :location, :avatar)
  end
end
