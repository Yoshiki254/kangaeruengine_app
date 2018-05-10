class CreateExpeditions < ActiveRecord::Migration
  def change
    create_table :expeditions do |t|
    	t.string   :name

      t.timestamps
    end
  end
end
