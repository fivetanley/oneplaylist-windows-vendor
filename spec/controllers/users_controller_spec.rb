require "rails_helper"

describe UsersController do
  describe "when there is no authentication" do
    before do
      get "/user.json"
    end
    let(:playlist_id) { json[:user][:playlist_id] }
    let(:playlist) { json.playlists.find { |c| c.id == playlist_id }}

    it "finds a unique anonymous user" do
      expect(last_response.status).to equal 200
      expect(json.user.id).to_not be_nil
    end

    it "has an empty shopping playlist" do
      expect(playlist_id).to_not be_nil
      expect(playlist).to_not be_nil
      expect(playlist.playlist_item_ids).to be_empty
    end
  end
end
