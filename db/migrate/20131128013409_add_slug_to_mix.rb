class AddSlugToMix < ActiveRecord::Migration
  def change
    add_column :mixes, :slug, :string
  end
end
