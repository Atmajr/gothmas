class RecreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.integer :karafun_id
      t.string :title
      t.string :artist
      t.integer :artist_id

      t.timestamps
    end
  end
end
