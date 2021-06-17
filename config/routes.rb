Rails.application.routes.draw do
  # get 'lists', to: 'lists#index'
  # get 'list/new', to: 'lists#new', as: :list_new
  # post 'lists', to: 'lists#create'
  # get 'list/:id', to: 'lists#show', as: :list

  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: :destroy
end
