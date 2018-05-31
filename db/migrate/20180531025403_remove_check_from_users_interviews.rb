class RemoveCheckFromUsersInterviews < ActiveRecord::Migration
  def change
    remove_column :users_interviews, :check, :string
  end
end
