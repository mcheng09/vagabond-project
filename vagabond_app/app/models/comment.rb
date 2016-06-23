class Comment < ActiveRecord::Base

  belongs_to :post

  # validates :title, presence: true, length: { maximum: 200 }
  validates :body, presence: true




end
