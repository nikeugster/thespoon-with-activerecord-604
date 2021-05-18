Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # # CRUD ACTIONS
  # # verb 'path', to: 'controller#action'

  # READ - all
  # get 'restaurants', to: 'restaurants#index'

  # get 'restaurants/new', to: 'restaurants#new'
  # # READ - one
  # get 'restaurants/:id', to: 'restaurants#show'

  # # create - 2 http requests
  # # 1. display the form

  # # 2. send the form (post)
  # post 'restaurants', to: 'restaurants#create'

  # # update - 2 http requests
  # # 1. display the form
  # get 'restaurants/:id/edit', to: 'restaurants#edit'

  # # 2. send the form
  # patch 'restaurants/:id', to: 'restaurants#update'

  # # delete
  # delete 'restaurants/:id', to: 'restaurants#destroy'

  resources :restaurants
  # index, show, new, create, edit, update, destroy

  # get 'manual_path', to: 'restaurants#something'

  # subset:
  # resources :restaurants, only: [:index]
  # resources :restaurants, except: [:index, :show]
end
