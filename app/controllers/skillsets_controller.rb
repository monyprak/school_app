class SkillsetsController < ApplicationController

	def index
		@skillsets = Skillset.all	
	end
	# action creata new Skillset
	def new
		@skillset = Skillset.new
	end
	def create

		@skillset = Skillset.new(skillset_params)
		if @skillset.save
		   redirect_to skillsets_path
		else
			render "new"
		end
	end
	# action update new skillset
	def edit
		@skillset = Skillset.find(params[:id])
	end

	def update
		@skillset = Skillset.find(params[:id])

		if @skillset.update(skillset_params)
		   redirect_to skillsets_path, notice: "skillset successfully updated!" # @skillset (the actual link can be)
		else
			render :edit
		end
	end
	# action to delete the skillset
	def destroy
		
		@skillset = Skillset.find(params[:id])
		@skillset.destroy
		redirect_to skillsets_url
	end

private
	def skillset_params
		params.require(:skillset).permit(:name)
	end
end
