class AddMixesCountToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :mixes_count, :integer, :null => false, :default => 0
  end

  def self.down
    remove_column :users, :mixes_count
  end
end
