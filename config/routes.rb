Rails.application.routes.draw do
  devise_for :users
  resources :users_academic_modalities, path: 'perfil/edit_datos_academicos/edu_superior', only: [:new, :create]
  resources :basic_middle_educations, path: 'perfil/edit_datos_academicos/edu_basica', only: [:new, :create, :show]
  resources :users_idioms, path: 'perfil/edit_datos_academicos/idiomas', only: [:new, :create, :show]
  resources :employments, path: 'perfil/experiencias_laborales', only: [:new, :create, :show]
  resources :users_ocupations, path: 'perfil/tiempo_experiencias_laborales', only: [:new, :create, :show]

  get 'perfil/datos_personales(/:id)', to: 'users#show', as: 'user'
  get 'perfil/datos_academicos/edu_superior(/:id)', to: 'academic_modalities#show', as: 'academic_modalities'


  root 'static_pages#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
