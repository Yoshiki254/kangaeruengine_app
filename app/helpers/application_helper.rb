module ApplicationHelper
	 def avatar_url(user)
    if user.avatar
      "http://graph.facebook.com/#{user.uid}/picture?type=large" # facebookの画像があった場合
    else
      
    end
  end
end
