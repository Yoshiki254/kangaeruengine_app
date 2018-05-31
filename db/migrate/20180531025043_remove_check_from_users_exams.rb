class RemoveCheckFromUsersExams < ActiveRecord::Migration
  def change
    remove_column :users_exams, :check, :string
  end
end
