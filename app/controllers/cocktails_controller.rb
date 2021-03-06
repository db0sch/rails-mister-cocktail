class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = Dose.where(cocktail_id: @cocktail.id)
  end

  def new
    @cocktail = Cocktail.new   
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save

    redirect_to cocktails_path
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.new(params[:id])
    @cocktail.update

    redirect_to cocktails_path(@cocktail)
  end

  def destroy
    
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :id, :photo)
  end
end
