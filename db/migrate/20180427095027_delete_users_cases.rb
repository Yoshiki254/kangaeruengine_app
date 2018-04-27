class DeleteUsersCases < ActiveRecord::Migration
  def change
  	drop_table :users_cases
  end
end
