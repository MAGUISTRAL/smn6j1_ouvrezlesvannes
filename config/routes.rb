Rails.application.routes.draw do
  get 'contact/index'
  get 'team/index'
  get 'static_pages/index'
  get 'static_pages/secret'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :contact, only: [:index]
  resources :team, only: [:index]

end
