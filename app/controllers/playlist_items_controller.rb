class PlaylistItemsController < ApplicationController
  respond_to :json

  def create
    @playlist_item = current_user.playlist_items.create create_params
    respond_with @playlist_item
  end

  def update
    @playlist_item = current_user.playlist_items.find(params[:id])
    @playlist_item.update_attributes update_params
    respond_with @playlist_item
  end

  def destroy
    @playlist_item = current_user.playlist_items.find(params[:id])
    @playlist_item.destroy
    render json: {}, status: :ok
  end

  private

  def create_params
    params.require(:playlist_item).permit(:song_id)
  end

  def update_params
    params[:playlist_item].delete(:song_id)
    params.require(:playlist_item)
  end
end
