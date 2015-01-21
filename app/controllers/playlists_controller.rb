class PlaylistsController < ApplicationController
  respond_to :json

  def show
    @playlist = current_user.playlist
    respond_with @playlist
  end
end
