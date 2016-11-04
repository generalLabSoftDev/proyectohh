class FormsController < ApplicationController
	def index
	  @form = Form.all
	end

	def show
	  @form= Form.find(params[:id])
	end

	def new
		@form = Form.new
	end

	def edit
	  @form = Form.find(params[:id])
	end

	def create
	  @form = Form.new(form_params)
	 
		  if @form.save
		    redirect_to @form
		  else
		    render 'new'
		  end
	end

	def destroy
	  @form = Form.find(params[:id])
	  @form.destroy
	 
	  redirect_to forms_path
	end

	private
	def form_params
	    params.require(:form).permit(:descripcion)
	end

end
