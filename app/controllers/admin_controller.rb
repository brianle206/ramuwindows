class AdminController < ApplicationController
	def index
		if params[:category].blank?
			@article = Article.all.order('created_at DESC')
		else
			@category_id = Category.find_by(name: params[:category]).id 
			puts @category_id
			@article = Article.where(category_id: @category_id).order('created_at DESC')
		end
	end
	def show
		
	end

end
