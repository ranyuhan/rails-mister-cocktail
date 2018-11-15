class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update]
  def index
    @cocktails = Cocktail.all
  end

  def show

  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_pramas)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_pramas
    params.require(:cocktail).permit(:name)
  end

end
