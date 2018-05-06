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
  has_many :exams, through: :users_exams
  has_many :users_exams
  has_one  :next_lesson
  

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]

end
