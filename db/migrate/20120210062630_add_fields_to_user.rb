class AddFieldsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :address, :text
    add_column :users, :phoneno, :string
  end

  def self.down
    remove_column :users, :phoneno
    remove_column :users, :address
    remove_column :users, :age
    remove_column :users, :name
  end
end
