class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
  validates_presence_of :body, message: 'A blank comment? Not gonna happen!'
end