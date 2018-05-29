class PicturesController < ApplicationController
  before_action :authenticate_user!
  before_action :move_to_session

  def index
    @pictures = Picture.where(user_id: params[:user_id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to user_pictures_path(params[:user_id])
    end
  end

  private
  def move_to_session
		@user = User.find(params[:user_id])
		unless current_user.id == @user.id
			redirect_to action: 'show', status: 404
		end
  end
  
  def picture_params
    params.require(:picture).permit(:caption, :image).merge(user_id: params[:user_id])
  end
end
