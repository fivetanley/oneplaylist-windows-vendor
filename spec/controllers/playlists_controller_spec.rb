require "rails_helper"

describe PlaylistsController do
  before do
    get "/playlist.json"
  end

  it "just has a playlist" do
    expect(last_response.status).to equal 200
    expect(json.playlist).to_not be_nil
    expect(json.playlist.playlist_item_ids).to be_empty
  end
end
