Rails.application.routes.draw do
  devise_for :users
  root to: "bookers#top"
  resources :books
  get 'bookers/show'
  get 'bookers/index'
  get 'bookers/edit'
  get 'bookers/create'
  get 'bookers/update'
  get 'bookers/destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
