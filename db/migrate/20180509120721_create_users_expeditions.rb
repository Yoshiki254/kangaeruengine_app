class CreateUsersExpeditions < ActiveRecord::Migration
  def change
    create_table :users_expeditions do |t|
    	t.integer  :user_id
    	t.integer  :expedition_id
    	t.date     :date

      t.timestamps null: false
    end
  end
end
