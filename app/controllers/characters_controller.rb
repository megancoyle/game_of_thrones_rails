class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
    @houses = House.all
  end

  def edit
    @character = Character.find(params[:id])
    @house = House.find(params[:house_id])
  end

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create(character_params)

    if @character.save
      redirect_to house_path(@house), notice: "A new character was created."
    else
      redirect_to house_path(@house)
    end
  end

  def update
    @character = Character.find(params[:id])

    if @character.update(character_params)
      redirect_to @character
    else
      render 'edit'
    end
  end

  def destroy
    @house = House.find(params[:house_id])
    @character = @house.characters.find(params[:id])
    @character.destroy
    redirect_to house_path(@house)
  end

  private
    def character_params
      params.require(:character).permit(:name, :img_url, :gender, :house_id)
    end
end
