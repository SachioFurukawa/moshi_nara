Rails.application.routes.draw do
  devise_for :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'stories#index'

  #resources :stories, only: [:new, :create, :index, :show]
  delete 'stories/destroy'
  #post 'stories' => 'stories#create'

  resources :stories, only: [:new, :create, :index, :show] do
    resource :favorites, only: [:create, :destroy]
    resources :sentences, only: [:create, :destroy]
  end

end
