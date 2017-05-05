Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  resources :listings do
    collection do
      get 'search'
    end
		resources :listings, :address
end		
  get 'pages/about'

  get 'pages/contact'

  get 'seller' => "listings#seller"

  root 'listings#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
