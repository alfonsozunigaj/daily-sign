Rails.application.routes.draw do
  resources :categories
  resources :phrases
  root 'application#index'
  namespace 'api' do
    namespace 'v1' do
      resources :phrases
      get 'setup', to: 'phrases#setup'
      get 'categories', to: 'phrases#categories'
    end
  end
end
