Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'welcome#index', as: 'welcome'
  get '/new' => 'welcome#new'


  resources :posts
  resources :customs
  resources :profiles
  resources :customs

end
