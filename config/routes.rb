Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show] do
      resources :users_academic_modalities, only: [:index, :new, :create]
      resources :basic_middle_educations, only: [:index, :new, :create]
      resources :users_idioms, only: [:index, :new, :create]
      resources :employments, only: [:index, :new, :create]
      resources :users_ocupations, only: [:index, :new, :create]
  end

  root 'static_pages#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
