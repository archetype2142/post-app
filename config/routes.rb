Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts do
	resources :comments
  end
  resources :triangle, only: [:index, :create]
end
