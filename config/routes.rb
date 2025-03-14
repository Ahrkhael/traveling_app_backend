Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # Return cities from the database
      resources :cities, only: [:index, :show]
    end
  end
end
