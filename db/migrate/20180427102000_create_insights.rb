class CreateInsights < ActiveRecord::Migration
  def change
    create_table :insights do |t|
    	t.string   :name

      t.timestamps
    end
  end
end
