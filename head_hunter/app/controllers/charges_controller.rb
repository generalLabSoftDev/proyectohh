class ChargesController < ApplicationController

	def index
	  @charge = Charge.all
	end

	def show
	  @charge= Charge.find(params[:id])
	end

	def new
	end

	def create
	  @charge = Charge.new(charge_params)
	 
	  @charge.save
	  redirect_to @charge
	end

	private
	def charge_params
	    params.require(:charge).permit(:nombre, :cliente, :area, :sede, :idioma, :tiempo, :anosexp)
	end

end
