class RemoveCheckFromUsersLessons < ActiveRecord::Migration
  def change
    remove_column :users_lessons, :check, :string
  end
end
