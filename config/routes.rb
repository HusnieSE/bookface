Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'

  get 'posts/create'

  root to: redirect('/posts')
  get 'posts', to: 'posts#index'
  post 'posts', to: 'posts#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
