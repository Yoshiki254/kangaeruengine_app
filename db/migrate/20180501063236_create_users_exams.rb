class CreateUsersExams < ActiveRecord::Migration
  def change
    create_table :users_exams do |t|
    	t.integer  :user_id
    	t.integer  :exam_id
    	t.date     :date


      t.timestamps null: false
    end
  end
end
