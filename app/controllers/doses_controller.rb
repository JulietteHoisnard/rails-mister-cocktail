class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new # needed to instantiate the form_for
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render :new
    end
  end

  private

  def dose_params
    params
      .require(:dose)
      .permit(:description, :ingredient_id, :cocktail_id)
  end

end
