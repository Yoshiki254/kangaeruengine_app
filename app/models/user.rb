class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable, :omniauth_providers => [:facebook]

  has_many :lessons, through: :users_lessons
  has_many :users_lessons

  has_many :interviews, through: :users_interviews
  has_many :users_interviews

  has_many :insights, through: :users_insights
  has_many :users_insights

  has_many :exams, through: :users_exams
  has_many :users_exams

  has_many :practices, through: :users_practices
  has_many :users_practices

  has_one  :next_lesson

  has_many :expedition, through: :users_expeditions
  has_many :users_expeditions

  has_many :pictures

  # has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}
  # validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]

  mount_uploader :image, ImageUploader


  def self.from_omniauth(auth)
    User.find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"] || auth["info"]["name"]
      user.birthday = auth["info"]["birthday"]
      user.image = auth["info"]["image"]
      auth["info"]["email"] ? user.email = auth["info"]["email"] : user.email = User.dummy_email(auth)
      user.password   = Devise.friendly_token[0, 20]
      user.skip_confirmation!
    end
  end

  # def self.from_omniauth(auth)
  #   user = User.where(email: auth.info.email).first
  #   if user
  #     return user
  #   else
  #     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #       # userモデルが持っているカラムをそれぞれ定義していく
  #       user.email = auth.info.email
  #       user.password = Devise.friendly_token[0,20]
  #       user.name = auth.info.name
  #       user.avatar = auth.info.image
  #       user.uid = auth.uid
  #       user.provider = auth.provider

  #       # If you are using confirmable and the provider(s) you use validate emails,
  #       # uncomment the line below to skip the confirmation emails.
  #       user.skip_confirmation!
  #     end
  #   end
  # end

  def full_profile?
    image? && name? && name_kana? && tel?
  end

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、name_kanaカラムを部分一致検索
      User.where(['name_kana LIKE ?', "%#{search}%"])
    else
      User.all #全て表示。
    end
  end

end


private

  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end