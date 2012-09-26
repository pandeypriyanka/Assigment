class User < ActiveRecord::Base
  attr_accessible :login
  has_many :posts, :dependent => :destroy

end
