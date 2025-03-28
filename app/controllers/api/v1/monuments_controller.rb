module Api
  module V1
    class MonumentsController < ApplicationController
      before_action :set_monument_by_name, only: [:show_by_name]

      def index
        monuments = Monument.all
        render json: monuments, each_serializer: MonumentDetailSerializer
      end

      def show_by_name
        if @monument
          render json: @monument, serializer: MonumentDetailSerializer
        else
          render json: { error: 'Monument not found' }, status: :not_found
        end
      end

      private

      def set_monument_by_name
        @monument = Monument.find_by(name: params[:name])
      end
    end
  end
end
