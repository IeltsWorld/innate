# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  get '/buynow', to: 'home#buynow'
  get '/settings', to: 'home#settings'

  # API
  namespace :api do
    # get '/users_by_email' => "users_by_emails#show", as: :users_by_email
    resources :favourites, only: [:create, :destroy]
  end

  # RESOURCES
  resources :freecourses, only: :show
  resources :paidcourses, only: :show

  # To add stripe missing payments here
  resources :reservations, only: :new, controller: 'paidcourses/reservation'

  # Continue from here
  resources :accounts, only: [:show, :update]
  resources :passwords, only: [:show ,:update]
  resources :profiles, only: [:show ,:update]

  put '/teachermaker/:user_id' => 'teachermaker#update', as: :teachermaker
  put '/adminmaker/:user_id' => 'adminmaker#update', as: :adminmaker
  put '/studentmaker/:user_id' => 'studentmaker#update', as: :studentmaker

  namespace :teacher do
    get '/dashboard' => 'dashboard#index', as: :dashboard
    resources :freecourses, except: :index
  end

  namespace :admin do
    get '/dashboard' => 'dashboard#index', as: :dashboard
    resources :paidcourses, only: :new
  end

  namespace :student do
    get '/dashboard' => 'dashboard#index', as: :dashboard
  end
end
