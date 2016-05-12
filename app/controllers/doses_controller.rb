class DosesController < ApplicationController

  def index
    @doses = Doses.all
  end

  def show
    @dose = Doses.find(cocktail_params)
  end

  def new
    @dose = Doses.new   
  end

  def create
    @dose = Doses.new(cocktail_params)
    @dose.save
    
    redirect_to cocktail_path(@dose)
  end

  def edit
    @dose = Doses.find(cocktail_params)
  end

  def update
    @dose = Doses.new(cocktail_params)
    @dose.update

    redirect_to cocktail_path(@dose)
  end

  def destroy
    
  end
  
  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :ingredient, :cocktail)
  end
end
