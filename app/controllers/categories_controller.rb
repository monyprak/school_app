class CategoriesController < ApplicationController

	def index
		@categories = Category.all	
	end
	# action creata new category
	def new
		@category = Category.new
	end
	def create

		@category = Category.new(category_params)
		if @category.save
		   redirect_to categories_path
		else
			render "new"
		end
	end
	# action update new category
	def edit
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])

		if @category.update(category_params)
		   redirect_to categories_path, notice: "category successfully updated!" # @category (the actual link can be)
		else
			render :edit
		end
	end
	# action to delete the category
	def destroy
		
		@category = Category.find(params[:id])
		@category.destroy
		redirect_to categories_url
	end

private
	def category_params
		params.require(:category).
				permit(:name)
	end

end
