class Question < ActiveRecord::Base
	belongs_to :quizzes
	has_many :answers, :dependent => :destroy, autosave: true
	accepts_nested_attributes_for :answers, :allow_destroy => true
	default_scope { order(id: :desc) }
end
