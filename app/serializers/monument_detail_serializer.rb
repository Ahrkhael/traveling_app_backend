class MonumentDetailSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :blur_data_url, :latitude, :longitude, :monument_link
  attribute :city_name

  def city_name
    object.city.name
  end
end