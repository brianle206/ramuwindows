module LearnHelper
	def is_enrolled(learn_id)
		@enroll = Course.where(learn_id: learn_id, users_id: current_user.id)
		@enrolled = false
		@enroll.each do |enroll|
			if enroll.learn_id = learn_id
				@enrolled = true
			end
		end
	end
	def find_status(params)
	    @lecture = Lecture.find(params)
	    @status = Complete.where(user_id: current_user.id, lecture_id: @lecture.id)
  	end
end
