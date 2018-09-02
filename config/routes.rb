Rails.application.routes.draw do
  resources :sub_topics
  resources :topics
  resources :chapters
  resources :books
  resources :subjects
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
