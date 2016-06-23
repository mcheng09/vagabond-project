class User < ActiveRecord::Base

  has_many :comments, through: :posts
  has_many :posts
  has_secure_password

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "Ben.jpeg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates :email, presence: true, uniqueness: true, format: { with: /@/}

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end


end
