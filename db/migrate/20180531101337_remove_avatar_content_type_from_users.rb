class RemoveAvatarContentTypeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :avatar_content_type, :varchar
  end
end
