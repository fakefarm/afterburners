class AddImageUrlToMix < ActiveRecord::Migration
  def change
    add_column :mixes, :image_url, :string
  end
end
