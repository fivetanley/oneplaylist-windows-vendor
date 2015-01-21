class PlaylistSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id

  has_many :playlist_items
end
