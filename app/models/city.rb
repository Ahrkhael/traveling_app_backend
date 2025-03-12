class City < ApplicationRecord
  has_many :monuments, dependent: :destroy
end
