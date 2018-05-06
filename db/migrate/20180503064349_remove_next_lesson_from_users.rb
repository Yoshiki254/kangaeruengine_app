class RemoveNextLessonFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :next_lesson, :datetime
  end
end
