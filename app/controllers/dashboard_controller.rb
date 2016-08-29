class DashboardController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_user, :progress
  before_filter :find_lessons
  before_filter :find_size
  before_filter :find_status

  def index
  end

  def settings
  end
  def show
  end
  def lessons
  end

  def edit
  end

  def update
  end

  def delete
  end

  def progress
    render 'progress'
  end

  private

  def find_user
    @user = User.find(current_user.id)
  end

  def find_lessons
    @article = Article.where(category_id: 4)
    @lesson = Lecture.where(article_id: @article).order("id ASC")
  end
  def find_size
    @article = Article.where(category_id: 4)
    @size = Lecture.where(article_id: @article).count
  end
  def find_status
    @status = Complete.where(user_id: current_user.id)
  end
  def progress
    @progress = Article.where(category_id: 4).joins(Lecture.where(article_id:8))
  end
end
