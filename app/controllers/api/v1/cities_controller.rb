module Api
  module V1
    class CitiesController < ApplicationController
      def index
        @cities = City.all
        render json: @cities
      end

      def monuments_by_city
        city = City.find_by(name: params[:name])
        if city
          monument_names = city.monuments.pluck(:name)
          render json: { city: city.name, monuments: monument_names }
        else
          render json: { error: 'City not found' }, status: :not_found
        end
      end
    end
  end
end
