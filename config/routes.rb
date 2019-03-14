Rails.application.routes.draw do
  root to: 'posts#index'
  get '/disable_comments/:id', to: 'posts#disable_comments', as: 'disable_comments'
  get '/enable_comments/:id', to: 'posts#enable_comments', as: 'enable_comments'

  resources :posts do
	resources :comments
  end
  resources :triangle, only: [:index, :create]
end
