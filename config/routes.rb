Rails.application.routes.draw do
  root 'types#index'

  resources :types do
    resources :businesses
  end
end
