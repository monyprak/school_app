class TextbooksController < ApplicationController

	def index
		@textbooks = Textbook.all	
	end
	# action creata new Textbook
	def new
		@textbook = Textbook.new
	end
	def create

		@textbook = Textbook.new(textbook_params)
		if @textbook.save
		   redirect_to textbooks_path
		else
			render "new"
		end
	end
	# action update new textbook
	def edit
		@textbook = Textbook.find(params[:id])
	end

	def update
		@textbook = Textbook.find(params[:id])

		if @textbook.update(textbook_params)
		   redirect_to textbooks_path, notice: "textbook successfully updated!" # @textbook (the actual link can be)
		else
			render :edit
		end
	end
	# action to delete the textbook
	def destroy
		
		@textbook = Textbook.find(params[:id])
		@textbook.destroy
		redirect_to textbooks_url
	end

private
	def textbook_params
		params.require(:textbook).permit(:name)
	end
end
