Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:create, :destroy]
    member do                             # member => restaurant id in URL
      get 'photo', to: "cocktails#photo"  # RestaurantsController#chef
    end
  end
  root "cocktails#index"
end
