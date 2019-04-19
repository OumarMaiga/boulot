Rails.application.routes.draw do
  resources :experiences, :domaines, :langues, :cursus, :offres
  resources :postulers, except: :new
  root to: 'pages#index'
  get 'team', to: 'pages#team'
  get 'who', to: 'pages#who'
  devise_for :users, path: 'users', :controllers => {
  	:registrations => 'users/registrations',
  }
  devise_for :entreprises, path: 'entreprises', :controllers => {
    :registrations => 'entreprises/registrations',
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
