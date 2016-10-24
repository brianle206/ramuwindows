class LearnController < ApplicationController
  before_filter :find_section, only: [:show, :destroy]
  before_action :find_lecture, only: [:show, :add_lecture]
  before_action :this_lecture, only: [:lecture_show, :lecture_edit, :lecture_update]
  before_action :find_status, only: [:lecture_show]
  include LearnHelper
  def index
    @module = Learn.all
  end

  def create
    @lecture = Lecture.all
    @module = Learn.all
    @learn = Learn.create(learn_params)
    if @learn.save
      render 'index'
    end
  end

  def new 
    @learn = Learn.new
  end
  
  def show
  end
  
  def update
  end

  def edit
  end

  def destroy
    @section.destroy
  end

  def add_lecture
    @lecture = Lecture.new
  end

  def create_lecture
    @section = Learn.find(params[:id])
    @lecture = @section.lectures.build(lecture_params)
    if @lecture.save
      redirect_to @section
    end
  end

  def lecture_show
    @lecture = Lecture.where(id: params[:lid])
    render 'lecture_show'
  end

  def lecture_edit
    
  end

  def lecture_update
    @lecture.update(lecture_params)
    redirect_to @lecture
  end

  def lecture_destroy
    @lecture = Lecture.find(params[:lid])
    if @lecture.present? 
      @lecture.destroy
    end
    redirect_to root_path
  end

  private

  def find_lecture
    @lecture = Lecture.where(learn_id: params[:id]).order('id DESC')
  end

  def this_lecture
    @lecture = Lecture.find(params[:lid])
  end

  def lecture_params
    params.require(:lecture).permit(:title, :content, :learn_id)
  end

  def learn_params
    params.require(:learn).permit(:title)
  end

  def find_section
    @section = Learn.find(params[:id])
    @lectures = @section.lectures.page(params[:page]).per_page(1)
  end

  def find_status
    @lecture = Lecture.find(params[:lid])
    @status = Complete.where(user_id: current_user.id, lecture_id: @lecture.id)
  end
  
end
