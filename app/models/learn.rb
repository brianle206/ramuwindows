class Learn < ActiveRecord::Base
	has_many :lectures, dependent: :destroy
	has_many :quizzes, dependent: :destroy
end
