class AdminsController < ApplicationController

	before_action :authenticate_admin!

	def show
	end

  # def search
  #    # 検索フォームのキーワードをあいまい検索して、usersテーブルから20件のユーザー情報を取得する
  #   @users = User.where('name LIKE(?)',"%#{params[:keyword]}%").limit(20)
  # end


end
