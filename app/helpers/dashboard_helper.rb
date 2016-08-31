module DashboardHelper
	def progress
		@article = Article.where(category_id: 4)
	    # @progress = Complete.joins("INNER JOIN lectures ON lectures.id = completes.lecture_id INNER JOIN articles ON articles.id = lectures.article_id AND completes.user_id = #{current_user.id} AND completes.lecture_id = lectures.id")
	    @lessons = Lecture.joins("INNER JOIN articles ON lectures.article_id = articles.id WHERE lectures.article_id = articles.id").order('id ASC')
	    # @status = Complete.where(user_id: current_user.id)
  	end
end
