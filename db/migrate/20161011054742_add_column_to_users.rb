class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :phone_num, :string
    add_column :users, :wechat, :string
    add_column :users, :avatar, :string
  end
end
