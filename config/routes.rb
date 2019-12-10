Rails.application.routes.draw do



  root :to => 'oauth_test#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # root 'tops#index'
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
}


  resources :users
  resources :tops
  resources :drinks
  resources :foods
  resources :side_menus
  resources :sakes

  resources :blogs do
    resources :comments
  end
  resources :maps, only: [:index]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
