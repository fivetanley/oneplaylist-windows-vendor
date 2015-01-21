class UsersController < ApplicationController
  respond_to :json

  def show
    @user = current_user
    respond_with @user, serializer: UserSerializer
  end
end
