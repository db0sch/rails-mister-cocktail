class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(cocktail_params)
  end

  def new
    @cocktail = Cocktail.new   
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save

    redirect_to cocktail_path(@cocktail)
  end

  def edit
    @cocktail = Cocktail.find(cocktail_params)
  end

  def update
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.update

    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
