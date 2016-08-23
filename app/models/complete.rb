class Complete < ActiveRecord::Base
	belongs_to :users
	belongs_to :lectures
end
