Rails.application.routes.draw do
  devise_for :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'

  resources :stories, only: [:new, :create, :index, :show]
  resources :sentences, only: [:new, :create, :index, :show]

  post 'favorites/create'
  delete 'favorites/destroy'

end
