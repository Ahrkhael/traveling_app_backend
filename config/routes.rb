Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # Return monuments for a city
      get 'cities/:name/monuments', to: 'cities#monuments_by_city'

      # Return monuments details for a city
      get 'cities/:name/monuments_details', to: 'cities#monuments_details_by_city'

      # Return cities
      resources :cities, only: [:index, :show]
    end
  end
end
