class Lecture < ActiveRecord::Base
	belongs_to :articles
	has_many :completes
end
