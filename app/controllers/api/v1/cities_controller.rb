module Api
  module V1
    class CitiesController < ApplicationController
      before_action :set_city, only: [:monuments]
      before_action :set_city_by_name, only: [:show_by_name]

      def index
        cities = City.all
        render json: cities, each_serializer: CitySerializer
      end

      def show_by_name
        if @city
          render json: @city, serializer: CityDetailSerializer
        else
          render json: { error: 'City not found' }, status: :not_found
        end
      end

      def monuments
        render json: @city.monuments, each_serializer: MonumentBasicSerializer
      end

      def names
        city_names = City.pluck(:name)
        render json: city_names
      end

      private

      def set_city
        @city = City.find(params[:id])
      end

      def set_city_by_name
        @city = City.find_by(name: params[:name])
      end

    end
  end
end
