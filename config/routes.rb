Rails.application.routes.draw do
  resources :experiences
  resources :langues
  resources :cursus
  resources :postulers, except: :new
  resources :offres
  resources :domaines
  root to: 'pages#index'
  get 'team', to: 'pages#team'
  get 'who', to: 'pages#who'
  devise_for :users, :controllers => {
  	:registrations => 'users/registrations',
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
