Rails.application.routes.draw do

  devise_for :admins, controllers: {
  	sessions: 'admins/sessions'
  }
  devise_for :users, controllers: {
  	sessions: 'users/sessions',
  	registrations: 'users/registrations'
  }
  

  namespace :admin do
  	resources :users, only: [:index, :show]
  	resources :markets, only: [:update]
      get "/tukinomiya" => "markets#tukinomiya"
      get "/katori" => "markets#katori"

  	resources :items do
  		resources :item_answes, only: [:new, :create, :index, :edit, :update]
  	end
  	resources :purchases, only: [:index, :show, :update]
  	resources :stores, only: [:index, :update]

  	root "stores#top"
  end


  namespace :user do
  	resources :users, only: [:show, :edit, :destroy]
  	resources :items, only: [:index, :show] do
  		resources :item_questions, only: [:new, :create, :index]
  	end
  	resources :purchases, only: [:new, :create, :index, :show]

  	resources :stores, only: [:index]

    get "/about" => "stores#about"

    get "/tukinomiya" => "markets#tukinomiya"
    get "/katori" => "markets#katori"

  end

  root "user/stores#top"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
