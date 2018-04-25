class AddColumnToUsers < ActiveRecord::Migration
  def change

    add_column :users, :name, :string
    add_column :users, :birthday, :date
    add_column :users, :tel, :string
    add_column :users, :job, :string

  end
end
