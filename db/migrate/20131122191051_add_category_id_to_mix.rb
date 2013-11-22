class AddCategoryIdToMix < ActiveRecord::Migration
  def change
    add_column :mixes, :category_id, :integer
  end
end
