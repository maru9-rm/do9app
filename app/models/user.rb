class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :boards
  has_many :comments
  has_one :profile


  def avatar_image
    if profile&.avatar&.attached?
      profile.avatar
    else
      'Oval.png'
    end
  end
  

  
end
