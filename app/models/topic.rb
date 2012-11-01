class Topic < ActiveRecord::Base
	 belongs_to :forum  
	 belongs_to :user
  has_many :posts, :dependent => :destroy
  attr_accessible :name, :last_poster_id, :last_post_at
end
