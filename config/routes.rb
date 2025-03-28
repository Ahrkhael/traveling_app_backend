Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cities, only: [:index, :show] do
        get :monuments, on: :member
        collection do
          get 'by_name/:name', to: 'cities#show_by_name'
        end
      end
      resources :monuments, only: [:index, :show] do
        collection do
          get 'by_name/:name', to: 'monuments#show_by_name'
        end
      end
    end
  end
end
