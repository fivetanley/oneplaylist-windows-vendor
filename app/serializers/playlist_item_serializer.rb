class PlaylistItemSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id

  has_one :song
  has_one :playlist
end
