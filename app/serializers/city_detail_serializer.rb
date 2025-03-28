class CityDetailSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :blur_data_url
  has_many :monuments, serializer: MonumentBasicSerializer
end