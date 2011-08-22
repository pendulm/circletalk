class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :hashed_password
      t.integer :post, :default => 0
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
