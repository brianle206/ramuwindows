class LectureController < ApplicationController
	before_action :find_lecture, only: [:destroy]
  before_action :find_lec_edit, except: [:edit]
  before_action :authenticate_user!
  def create
  end

  def update
    @lecture.update(lecture_params)
    redirect_to '/articles/4'
  end

  def destroy
  	@lecture.destroy

    redirect_to '/articles/4'
  end

  private

  def find_lec_edit
    @lecture = Lecture.find(params[:id])
  end
  def find_lecture 
  	@lecture = Lecture.find(params[:id])
  end
  def lecture_params
    params.require(:lecture).permit(:title, :content, :article_id)
  end
end
