class Lecture < ActiveRecord::Base
	belongs_to :articles
	belongs_to :user
end
