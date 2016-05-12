class DosesController < ApplicationController

  # def index
  #   @doses = Dose.all
  # end

  # def show
  #   @dose = Dose.find(cocktail_params)
  # end

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all   
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = find_cocktail
    @dose.ingredient = Ingredient.find(dose_params[:ingredient_id])
    @dose.save
    redirect_to cocktail_path(params[:cocktail_id])
  end

  # def edit
  #   @dose = Dose.find(cocktail_params)
  # end

  # def update
  #   @dose = Dose.new(cocktail_params)
  #   @dose.update

  #   redirect_to cocktail_path(@dose)
  # end

  def destroy
    
  end
  
  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
