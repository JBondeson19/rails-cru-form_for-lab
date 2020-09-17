Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists, only: [:index, :create, :show, :new, :edit, :update]
  resources :songs, only: [:index, :create, :show, :new, :edit, :update]
  resources :genres, only: [:index, :create, :show, :new, :edit, :update]

end
