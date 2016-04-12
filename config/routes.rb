Rails.application.routes.draw do
  resources :pets

  root 'pets#index'

  get 'pets/new' => 'pets#new'


  end
