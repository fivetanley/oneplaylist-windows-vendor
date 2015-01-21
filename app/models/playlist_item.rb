class PlaylistItem < ActiveRecord::Base
  belongs_to :playlist
  belongs_to :song

  validates_presence_of :playlist, :song
end
