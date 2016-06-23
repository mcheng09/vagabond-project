class City < ActiveRecord::Base

  has_many :comments, through: :posts
  has_many :users, through: :posts
  has_many :posts, dependent: :destroy

end
