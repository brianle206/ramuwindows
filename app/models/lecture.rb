class Lecture < ActiveRecord::Base
	belongs_to :learns
	has_many :completes
end
