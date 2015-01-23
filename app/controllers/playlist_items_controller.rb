class PlaylistItemsController < ApplicationController
  respond_to :json

  def create
    @playlist_item = playlist_items.create create_params
    respond_with @playlist_item
  end

  def update
    @playlist_item = playlist_items.update params[:id], update_params
    respond_with @playlist_item
  end

  def destroy
    @playlist_item = playlist_items.destroy params[:id]
    render json: {}, status: :ok
  end

  private

  def playlist_items
    current_user.playlist_items
  end

  def create_params
    if params[:playlist_item] && params[:playlist_item][:playlist_id]
      fail ActionController::UnpermittedParameters, [:playlist_id]
    end
    params.require(:playlist_item).permit(:song_id)
  end

  def update_params
    params[:playlist_item].delete(:song_id)
    params.require(:playlist_item)
  end
end
