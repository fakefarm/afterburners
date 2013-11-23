class ChangeImageUrlBackToStringMix < ActiveRecord::Migration
  def change
    change_column :mixes, :image_url, :string, default: nil
  end
end
