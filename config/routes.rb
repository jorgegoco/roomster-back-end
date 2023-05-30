Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  
  get '/', to: redirect('/api-docs')
  namespace :api do
    namespace :v1 do
      resources :reservations, only: [:index, :create, :destroy]
      resources :rooms, only: [:index, :show, :create, :destroy]
      resources :users, only: [] do
        collection do
          get 'me', to: 'users#me'
        end
      end
    end
  end
  resources :users
  post '/auth/login', to: 'authentication#login'
end
