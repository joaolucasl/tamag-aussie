# Migration file for the Users table

class CreateUserTable < ActiveRecord::Migration
  # Function to create the table 'users'
  def self.up
    create_table :users,:force => true do |t|
      t.string :name
      t.string :email
      t.string :password
      t.timestamps null: false
    end
    puts '#### Ran CreateUsers UP  #####'
  end
  # Function to remove the table 'users'
  def self.down
    drop_table :users
    puts '#### Ran CreateUsers DOWN  #####'
  end
end
