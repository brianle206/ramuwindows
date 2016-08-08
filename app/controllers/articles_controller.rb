class ArticlesController < ApplicationController
	before_action :find_article, only: [:show,:edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show, :landing]
	before_action :find_lecture, only: [:show, :add_lecture]
	def landing
	end
	def index
		if params[:category].blank?
			@article = Article.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@article = Article.where(category_id: @category_id).order("created_at DESC")
		end
	end

	def add_lecture
		@lecture = Lecture.new
	end

	def create_lecture
		@article = Article.find(params[:id])
		@lecture = @article.lectures.build(lecture_params)
		@lecture.save
		redirect_to @article
	end

	def lecture_show
		@lecture = Lecture.where(article_id: params[:id], id: params[:lid])
		render 'lecture_show'
	end

	def show
	end

	def new 
		@article = current_user.articles.build
	end

	def create
		@article = current_user.articles.build(article_parmas)
		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @article.update(article_parmas)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def destroy
		@article.destroy
		redirect_to root_path
	end

	private 

	def find_article
		@article = Article.find(params[:id])
	end
	def find_lecture
		@lecture = Lecture.where(article_id: params[:id]).order("id ASC")
	end
	def article_parmas
		params.require(:article).permit(:title, :content, :category_id)
	end
	def lecture_params
		params.require(:lecture).permit(:title, :content, :article_id)
	end
end
