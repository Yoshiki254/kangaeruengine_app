class CreateNextLessons < ActiveRecord::Migration
  def change
    create_table :next_lessons do |t|
    	t.integer :user_id
    	t.datetime :date_time

      t.timestamps
    end
  end
end
