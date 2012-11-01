class Forum < ActiveRecord::Base
	has_many :topics, :dependent => :destroy
    attr_accessible :name
end
