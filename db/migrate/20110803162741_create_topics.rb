class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.references :forum
      t.integer :replied
      t.integer :viewed

      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end
