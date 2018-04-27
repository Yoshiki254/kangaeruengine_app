class CreateUsersInsights < ActiveRecord::Migration
  def change
    create_table :users_insights do |t|
    	t.integer  :user_id
    	t.integer  :insight_id
    	t.date     :date
    	t.string   :check

      t.timestamps null: false
    end
  end
end
