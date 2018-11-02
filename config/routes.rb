# frozen_string_literal: true

Rails.application.routes.draw do
  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
  get 'rooms/show', to: 'rooms#show'
  devise_for :users
  root 'welcome_page#timeline'
  get 'landing_page', to: 'welcome_page#landing'

  resources :welcome_page, :profiles
  get 'posts/delete', to: 'posts#delete'
  post 'posts/create', to: 'posts#create'
  get 'my_images', to: 'image_posts#user_images'

  resources :posts do
    resources :comments
    resources :likes
  end

  resources :image_posts do
    resources :image_comments
    resources :image_likes
  end
  get 'profiles/:id/posts/:post_id/edit', to: 'posts#edit_profile_post'

  resources :users do
    resources :image_posts, only: 'get'
  end

  post '/update_settings', to: 'settings#update_settings'
  get '/display_settings/:id', to: 'settings#display_settings'
  get '/:id' => 'profiles#show', :constraints => { id: /\d+/ }
  get '/:username', to: 'profiles#username_show', constraints: { status: /\w+/ }
end
