class LanguagesController < ApplicationController

	def index
		@languages = Language.all	
	end
	# action creata new Language
	def new
		@language = Language.new
	end
	def create

		@language = Language.new(language_params)
		if @language.save
		   redirect_to languages_path
		else
			render "new"
		end
	end
	# action update new language
	def edit
		@language = Language.find(params[:id])
	end

	def update
		@language = Language.find(params[:id])

		if @language.update(language_params)
		   redirect_to languages_path, notice: "language successfully updated!" # @language (the actual link can be)
		else
			render :edit
		end
	end
	# action to delete the language
	def destroy
		
		@language = Language.find(params[:id])
		@language.destroy
		redirect_to languages_url
	end

private
	def language_params
		params.require(:language).permit(:name)
	end
end
