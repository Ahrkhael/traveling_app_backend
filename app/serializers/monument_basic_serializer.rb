class MonumentBasicSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :blur_data_url
end