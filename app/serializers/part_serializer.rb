class PartSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :og_website, :ships
end
