class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :image, :string
  end
end
