class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :lessons, through: :users_lessons
  has_many :users_lessons
  has_many :interviews, through: :users_interviews
  has_many :users_interviews
  has_many :insights, through: :users_insights
  has_many :users_insights

  # accepts_nested_attributes_for :users_lessons

end
