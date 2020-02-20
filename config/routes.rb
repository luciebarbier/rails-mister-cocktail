Rails.application.routes.draw do
  get 'doses/index'
  get 'cocktails/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:index, :new, :create, :destroy] do
      resources :ingredients, only: [:show, :new, :create]
    end
  end
end
