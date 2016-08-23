class DashboardController < ApplicationController
  before_filter :find_user
  before_filter :find_lessons
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
end
