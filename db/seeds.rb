[
  {
    id: 1,
    name: "Look Away",
    artist: "Chicago",
    amazon_url: "http://www.amazon.com/Look-Away/dp/B00124AIB4/ref=sr_1_1?ie=UTF8&qid=1422036864&sr=8-1&keywords=chicago+look+away&pebp=1422036868522&peasin=B00124AIB4",
    created_at: "2015-01-23T18:15:05.237Z",
    updated_at: "2015-01-23T18:15:47.226Z"
  },
  {
    id: 2,
    name: "Songbird",
    artist: "Kenny G",
    amazon_url: "http://www.amazon.com/Songbird/dp/B004LHQ318/ref=sr_1_1?ie=UTF8&qid=1422038250&sr=8-1&keywords=kenny+g+songbird&pebp=1422038258667&peasin=B004LHQ318",
    created_at: "2015-01-23T18:38:09.515Z",
    updated_at: "2015-01-23T18:38:09.515Z"
  },
  {
    id: 3,
    name: "Sailing",
    artist: "Christopher Cross",
    amazon_url: "http://www.amazon.com/Sailing/dp/B002ZJTJUQ/ref=sr_1_sc_1?ie=UTF8&qid=1422038677&sr=8-1-spell&keywords=chistopher+cross+sailing&pebp=1422038687592&peasin=B002ZJTJUQ",
    created_at: "2015-01-23T18:45:29.102Z",
    updated_at: "2015-01-23T18:45:29.102Z"
  }
].each do |attrs|
  Song.create! attrs.slice(:name, :artist, :amazon_url)
end
