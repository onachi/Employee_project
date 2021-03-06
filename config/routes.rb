Rails.application.routes.draw do

  devise_for :users , path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :home, only: [:index] do
    collection do
      post :start
      post :stop
    end
  end
  resources :timesheets, only: [:index, :update] do
    collection do
      post :start
      post :stop
      patch :update_status
    end
  end
  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
