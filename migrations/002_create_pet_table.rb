# Migration file for the Pets table

class CreatePetTable < ActiveRecord::Migration
  # Function to create the table 'users'
  def up
    create_table :pets,:force => true do |t|
      t.string :species
      t.string :name
      t.string :health
      t.string :intelligence
      t.string :happiness
      t.string :hunger
      t.string :coins
      t.string :homeLat
      t.string :homeLong
      t.integer :user_id
      t.timestamps null: false
      # Adds foreign key to the User table
      t.references(:users, foreign_key:true)

    end
    puts '#### Ran CreateUsers UP  #####'
  end
  # Function to remove the table 'users'
  def down
    drop_table :users
    puts '#### Ran CreateUsers DOWN  #####'
  end
end
