class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :activity_logs
  has_many :activities, through: :activity_logs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
