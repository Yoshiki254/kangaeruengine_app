class RemoveCheckFromUsersInsights < ActiveRecord::Migration
  def change
    remove_column :users_insights, :check, :string
  end
end
