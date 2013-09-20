class TutorsController < ApplicationController

	def index
		
	end

	def new
		@designatories = Designatory.all
		@skillsets = Skillset.all
		@languages = Language.all
		@tutor = Tutor.new
	end
	def create
		@tutor = Tutor.new(tutor_params)

		if @tutor.save
		   
		   redirect_to tutors_path
		else
			render "new"
		end
	end

private 
	def tutor_params
		params.require(:tutor).permit(:title, :first_name, :last_name, :daily_rate, :publish)
	end
end
