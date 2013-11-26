class AddVotesCountCommentsCountToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :votes_count, :integer, :null => false, :default => 0
    add_column :users, :comments_count, :integer, :null => false, :default => 0
  end

  def self.down
    remove_column :users, :votes_count
    remove_column :users, :comments_count
  end
end
