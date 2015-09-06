class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :comments
  is_impressionable

  validates_presence_of :title, message: 'You need a title!'
  validates_presence_of :body, message: 'You can\'t have a blank post...' 
end