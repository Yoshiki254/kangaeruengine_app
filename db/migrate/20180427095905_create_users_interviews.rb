class CreateUsersInterviews < ActiveRecord::Migration
  def change
    create_table :users_interviews do |t|
    	t.integer  :user_id
    	t.integer  :interview_id
    	t.date     :date
    	t.string   :check

      t.timestamps null: false
    end
  end
end
