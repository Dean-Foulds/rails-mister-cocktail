class DosesController < ApplicationController
  before_action :set_cocktail, only: [:create, :destroy]
  def new
  end
  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktails_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

  def destroy
  end

  private
  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
