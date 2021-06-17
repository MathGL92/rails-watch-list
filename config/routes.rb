Rails.application.routes.draw do
  get 'lists', to: 'lists#index'
  get 'list/new', to: 'lists#new', as: :list_new
  post 'lists', to: 'lists#create'
  get 'list/:id', to: 'lists#show', as: :list
end
