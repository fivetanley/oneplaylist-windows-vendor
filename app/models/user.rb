class User < ActiveRecord::Base
  devise :database_authenticatable, :trackable, :rememberable
  has_one :playlist

  after_create :create_default_playlist!

  def playlist_items
    playlist.playlist_items
  end

  private

  def create_default_playlist!
    self.playlist = Playlist.create!
  end
end
