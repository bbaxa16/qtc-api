Rails.application.routes.draw do
  resources :authors
  resources :firstnames
  resources :blogs
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
