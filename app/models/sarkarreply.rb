class Sarkarreply < ActiveRecord::Base
	belongs_to :problem
	has_many :replycomments
end
