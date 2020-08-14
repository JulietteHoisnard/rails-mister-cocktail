Rails.application.routes.draw do
  root to:"cocktails#index"
  resources :cocktails, except: [:edit, :update, :destroy] do
    resources :doses, except: [:edit, :update, :destroy]
  end
end
