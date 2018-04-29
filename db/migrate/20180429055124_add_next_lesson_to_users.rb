class AddNextLessonToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :next_lesson, :datetime
  end
end
