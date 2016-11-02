class CourseController < ApplicationController
  def add
  	@course = Course.create(user_id: current_user.id, learn_id: params[:learn_id])
  	if @course.save
  		redirect_to :back
  	end
  end

  def update
  end
end
