class Problem < ActiveRecord::Base
	has_many :comments
	has_many :sarkarreplies
end
