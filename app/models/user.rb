class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Users provide workers tasks through tubes
  
  has_many :tubes
  has_many :tasks, through: :tubes
  has_many :workers, through: :tubes

end

