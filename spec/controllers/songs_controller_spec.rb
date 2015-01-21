require "rails_helper"

describe SongsController do
  before do
    Song.create name: "Hotel California", artist: "Eagles", amazon_url: "http://www.amazon.com/dp/B00DAKW848/ref=dm_ws_tlw_trk1"
    get "/songs.json"
  end

  let(:songs) { json.songs }

  it "contains the list of songs" do
    expect(songs.length).to equal 1
    expect(songs.first.name).to eql "Hotel California"
    expect(songs.first.artist).to eql "Eagles"
    expect(songs.first.amazon_url).to eql "http://www.amazon.com/dp/B00DAKW848/ref=dm_ws_tlw_trk1"
  end
end
