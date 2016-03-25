Rails.application.routes.draw do
  get 'profile' => 'users#profile'
  get 'users/edit'
  get '/imgone' => 'users#delete'
  devise_for :users
  resources :users
    resources :posts do
      member do
        patch 'vote'
      end
      resources :comments
        end
    root 'posts#index'
end
