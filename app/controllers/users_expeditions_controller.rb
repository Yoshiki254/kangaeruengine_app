class UsersExpeditionsController < ApplicationController

	def create
		@users_expedition = UsersExpedition.new(create_params)

    if current_user
      respond_to do |format|
        if @users_expedition.save
          format.html { redirect_to user_path(current_user), notice: 'Date was successfully created.' }
        else
          format.html { redirect_to user_path(current_user) }
        end
      end
    else
      respond_to do |format|
        if @users_expedition.save
          format.html { redirect_to admins_user_path(params[:user_id]), notice: 'Date was successfully created.' }
        else
          format.html { redirect_to admins_user_path(params[:user_id]) }
        end
      end
    end
  end
  
  def update
    @users_expedition = UsersExpedition.find(params[:id])
    if current_user
      respond_to do |format|
        if @users_expedition.update(update_params)
          format.html { redirect_to user_path(current_user), notice: 'Date was successfully updated.' }
        else
          format.html { redirect_to user_path(current_user) }
        end
      end
    else
      respond_to do |format|
        if @users_expedition.update(update_params)
          format.html { redirect_to admins_user_path(params[:user_id]), notice: 'Date was successfully updated.' }
        else
          format.html { redirect_to admins_user_path(params[:user_id]) }
        end
      end
    end
  end


	private
	def create_params
		params.require(:users_expedition).permit(:date, :expedition_id).merge(user_id: params[:user_id])
	end

  def update_params
		params.require(:users_expedition).permit(:date, :expedition_id).merge(user_id: params[:user_id])
	end
end
