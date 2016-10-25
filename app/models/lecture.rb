class Lecture < ActiveRecord::Base
	belongs_to :learns
	has_many :completes
	default_scope { order(id: :asc) }
end
