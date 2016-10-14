class CompetenciesController < ApplicationController

  def destroy
    @charge = Charge.find(params[:charge_id])
    @competency = @charge.competencies.find(params[:id])
    @competency.destroy
    redirect_to charge_path(@charge)
  end

  def create
    @charge = Charge.find(params[:charge_id])
    @competency = @charge.competencies.create(competency_params)
    redirect_to charge_path(@charge)
  end
 
  private
    def competency_params
      params.require(:competency).permit(:descripcion, :nivel, :tag)
    end
end
