Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "api/sessions" }

  resource :user, only: [:show]

  resource :playlist, only: [:show, :update] do
    resources :items, controller: 'playlist_items'
  end

  resources :songs
end
