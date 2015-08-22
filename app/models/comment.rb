class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates_presence_of :body, message: 'A blank comment? Maybe it\'s better that way...'
end