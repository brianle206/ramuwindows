class Course < ActiveRecord::Base
	has_many :users
	has_many :learns
end
