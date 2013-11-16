class CreateMixes < ActiveRecord::Migration
  def change
    create_table :mixes do |t|
      t.string :title
      t.text :body
      t.integer :profile_id
      t.string :spotify_url

      t.timestamps
    end
  end
end
