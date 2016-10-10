module DashboardHelper
	def progress
		@article = Learn.all.order('id ASC')
    # @progress = Complete.joins("INNER JOIN lectures ON lectures.id = completes.lecture_id INNER JOIN learns ON learns.id = lectures.learn_id AND completes.user_id = #{current_user.id} AND completes.lecture_id = lectures.id")
    @lessons = Lecture.joins("INNER JOIN learns ON lectures.learn_id = learns.id WHERE lectures.learn_id = learns.id").order('id ASC')
    # @status = Complete.where(user_id: current_user.id)
	end

	def courses
    @courses = Course.where(users_id: current_user.id)
	end

	def find_learn(id)
		@learn = Learn.where(id: id)
    @number_of_lectures = find_lecture(id).count
    @complete = find_complete(id).count
    @percentage = ((@complete.to_f/@number_of_lectures) * 100).round
	end

	def find_lecture(id)
		@lecture = Lecture.where(learn_id: id)
	end

  def find_complete(id)
    @complete = Complete.where(learn_id: id, user_id: current_user.id)
  end
end
