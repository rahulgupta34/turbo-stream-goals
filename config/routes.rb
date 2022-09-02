Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "turbo#index"
  resources :turbo do
    collection do
      get :turbo_crud
    end
  end
end
