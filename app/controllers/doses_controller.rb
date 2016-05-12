class DosesController < ApplicationController

  # def index
  #   @doses = Dose.all
  # end

  # def show
  #   @dose = Dose.find(cocktail_params)
  # end

  def new
    @dose = Dose.new   
  end

  def create
    @dose = Dose.new(cocktail_params)
    @dose.save
    
    redirect_to cocktail_path(@dose)
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

  def cocktail_params
    params.require(:cocktail).permit(:name, :ingredient, :cocktail)
  end
end
