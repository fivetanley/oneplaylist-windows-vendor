class CreatePlaylistItems < ActiveRecord::Migration
  def change
    create_table :playlist_items do |t|
      t.references :playlist, index: true
      t.references :song, inde: true
      t.timestamps null: false
    end
  end
end
