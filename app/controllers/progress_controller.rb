class ProgressController < ApplicationController
  def add
  	@progress = Complete.create(user_id: params[:uid], lecture_id: params[:lid], status: true)
  	if @progress.save
  		redirect_to root_path
  	end
  end
end
