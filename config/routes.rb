Rails.application.routes.draw do
  
  root "pages#index"
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :posts do
    resources :comments
  end


  resources :categories

end
