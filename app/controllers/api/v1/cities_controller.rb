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

      def monuments_details_by_city
        city = City.find_by(name: params[:name])
        if city
          monuments = city.monuments.as_json(only: [:name, :image_url, :blur_data_url, :latitude, :longitude, :monument_link])
          render json: { city: city.name, monuments: monuments }
        else
          render json: { error: 'City not found' }, status: :not_found
        end
      end

    end
  end
end
