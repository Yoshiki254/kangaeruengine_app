class CreateUsersPractices < ActiveRecord::Migration
  def change
    create_table :users_practices do |t|
    	t.integer  :user_id
    	t.integer  :practice_id
    	t.date     :date

      t.timestamps null: false
    end
  end
end
