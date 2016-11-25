class ChargesController < ApplicationController

	def index
	  @charge = Charge.all
	end

	def show
	  @charge= Charge.find(params[:id])
	end

	def new
		@charge = Charge.new
	end

	def edit
	  @charge = Charge.find(params[:id])
	end

	def create
	  @charge = Charge.new(charge_params)
	 
		  if @charge.save
		    redirect_to @charge
		  else
		    render 'new'
		  end
	end

	def update
	  @charge = Charge.find(params[:id])
	 
	  if @charge.update(charge_params)
	    redirect_to @charge
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @charge = Charge.find(params[:id])
	  @charge.destroy
	 
	  redirect_to charges_path
	end

	private
	def charge_params
	    params.require(:charge).permit(:nombre, :cliente, :area, :sede, :idioma, :idiomalvl, :discapacidad, :viaje, :educacion, :estado, :municipio, :sector, :etiqueta)
	end

end
