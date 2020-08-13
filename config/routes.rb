Rails.application.routes.draw do
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/create'
  get 'cocktails/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, except: [:edit, :update, :destroy]
end
