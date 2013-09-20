class DesignatoriesController < ApplicationController

	def index
		@designatories = Designatory.all	
	end
	# action creata new designatory
	def new
		@designatory = Designatory.new
	end
	def create

		@designatory = Designatory.new(designatory_params)
		if @designatory.save
		   redirect_to designatories_path
		else
			render "new"
		end
	end
	# action update new designatory
	def edit
		@designatory = Designatory.find(params[:id])
	end

	def update
		@designatory = Designatory.find(params[:id])

		if @designatory.update(designatory_params)
		   redirect_to designatories_path, notice: "designatory successfully updated!" # @designatory (the actual link can be)
		else
			render :edit
		end
	end
	# action to delete the designatory
	def destroy
		
		@designatory = Designatory.find(params[:id])
		@designatory.destroy
		redirect_to designatories_url
	end

private
	def designatory_params
		params.require(:designatory).permit(:name)
	end
end
