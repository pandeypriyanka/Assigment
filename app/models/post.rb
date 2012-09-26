class Post < ActiveRecord::Base
  attr_accessible :description, :is_featured, :title, :cover_image
  belongs_to :user
  validates :title, :uniqueness=>true
  validates :title, :presence => true
  validates :title, :length => { :maximum => 32 }
  scope :featured, :conditions => {:is_featured => true}
  image_accessor :cover_image           


end
