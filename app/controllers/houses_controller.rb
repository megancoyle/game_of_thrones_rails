class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
  end

  def create
    @house = House.new(house_params)
    @house.save
    redirect_to @house
  end

  private
    def house_params
      params.require(:house).permit(:name)
    end
end
