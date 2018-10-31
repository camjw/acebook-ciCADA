# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'welcome_page#timeline'

  resources :welcome_page
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
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

  resources :profiles do
  end

  get 'profiles/:id/posts/:post_id/edit', to: 'posts#edit_profile_post'

  resources :users do
    resources :image_posts, only: 'get'
  end

  post '/change_settings', to: 'profiles#update_settings'
  get '/change_settings', to: redirect('/')

  get '/:id' => 'profiles#show', :constraints => { id: /\d+/ }
  get '/:username', to: 'profiles#username_show', constraints: { status: /\w+/ }
end
