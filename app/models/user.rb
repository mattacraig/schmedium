class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments

  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '80x80#' }, default_url: 'app/assets/images/defaultPic.png'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
