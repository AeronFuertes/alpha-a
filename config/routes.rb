Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'place#welcome'
  get 'home', to: 'place#home'
  get 'about', to: 'place#about'
  get 'products', to: 'place#products'
  get 'contacts', to: 'place#contacts'







end
