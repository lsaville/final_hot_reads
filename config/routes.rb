Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :reads, only: [:create]
      get 'hotreads', to: 'current_hotreads#index'
    end
  end

  get '/', to: 'hotreads#index'
end
