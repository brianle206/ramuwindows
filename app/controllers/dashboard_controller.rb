class DashboardController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_user, :progress, :find_lessons, :find_size, :find_status

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
    @progress = Complete.joins("INNER JOIN lectures ON lectures.id = completes.lecture_id INNER JOIN articles ON articles.id = lectures.article_id AND completes.user_id = #{current_user.id} AND completes.lecture_id = lectures.id").count
    @lessons = Lecture.joins("INNER JOIN articles ON lectures.article_id = articles.id WHERE lectures.article_id = articles.id").count
    @numbers = ("#{@progress} / #{@lessons}")
    @percentage = (@progress.to_f/@lessons) * 100
    puts @percentage
  end
end
