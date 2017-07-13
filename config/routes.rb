Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  get 'top/index'

 # resources :blogs, only: [:index, :new, :create, :edit, :update ,:destroy] do
 resources :blogs do
    resources :comments
    post :confirm, on: :collection
    collection do
      post :confirm
    end
  end

  resources :contacts, only: [:new, :create] do
    collection do
      post :confirm
    end
  end

  resources :poems, only: [:index, :show]
  root 'top#index'
end
