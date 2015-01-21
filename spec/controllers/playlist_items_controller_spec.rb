require "rails_helper"

describe PlaylistItemsController do
  describe "adding a song to the playlist" do
    context "when the song does not exist" do
      before do
        post "/playlist/items.json", playlist_item: {song_id: 'does-not-exist'}
      end
      it "fails" do
        expect(last_response.status).to eq 422
        expect(json.errors.song).to_not be_empty
      end
    end
    context "with a song that does exist" do
      let(:song) { Song.create! name: 'Hotel California', artist: 'Eagles', amazon_url: 'imgur' }

      before do
        post "/playlist/items.json", playlist_item: { song_id: song.id}

      end
      it "successfully adds the song to the playlist" do
        expect(last_response.status).to eq 201
        get '/playlist.json'
        expect(json.playlist.playlist_item_ids).to_not be_empty
        expect(json.playlist_items.map(&:id)).to eq [1]
      end
    end
  end
end
