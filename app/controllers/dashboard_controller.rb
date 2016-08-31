class DashboardController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_user, :progress, :find_lessons, :find_size

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
    @lesson = Lecture.joins("JOIN articles ON articles.id = lectures.article_id").order("id ASC")
  end
  def find_size
    @article = Article.where(category_id: 4)
  end
 
  def progress
    @article = Article.all
    @progress = Complete.joins("INNER JOIN lectures ON lectures.id = completes.lecture_id INNER JOIN articles ON articles.id = lectures.article_id AND completes.user_id = #{current_user.id} AND completes.lecture_id = lectures.id")
    @lessons = Lecture.joins("INNER JOIN articles ON lectures.article_id = articles.id WHERE lectures.article_id = articles.id").order('id ASC')
    @status = Complete.where(user_id: current_user.id)
    

  end
end
