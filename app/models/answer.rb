class Answer < ActiveRecord::Base
	belongs_to :question, autosave: true
end
