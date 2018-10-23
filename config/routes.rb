# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'welcome_page/welcome'
  root 'welcome_page#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
end
